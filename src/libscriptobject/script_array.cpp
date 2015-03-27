#include "script_array.h"
#include "script_array_source.h"
#include "exceptions.h"

rs::scriptobject::ScriptArray::ScriptArray(unsigned size, unsigned count) :
    size(size), count(count) {
    singleTypeFlag = 0;
    spareFlag1 = 0;
    spareFlag2 = 0;
    spareFlag3 = 0;
}

void rs::scriptobject::ScriptArray::ScriptArrayDeleter(ScriptArray* ptr) {
    // destroy all child object/array references
    auto valueStart = getValueStart(*ptr);
    auto types = ptr->getTypeStart();
    for (int i = 0; i < ptr->count; ++i) {
        auto index = ptr->offsets[i];

        switch (static_cast<rs::scriptobject::ScriptObjectType>(types[i])) {
            case ScriptObjectType::Object: {
                auto child = reinterpret_cast<ScriptObjectPtr*>(valueStart + ptr->offsets[index]);
                child->~ScriptObjectPtr();
                break;
            }
            case ScriptObjectType::Array: {
                auto child = reinterpret_cast<ScriptArrayPtr*>(valueStart + ptr->offsets[index]);
                child->~ScriptArrayPtr();
                break;
            }
        }
    }
    
    ptr->~ScriptArray();
    delete[] reinterpret_cast<unsigned char*>(ptr);
}

const unsigned char* rs::scriptobject::ScriptArray::getValueStart() const {
    auto start = reinterpret_cast<const unsigned char*>(&(offsets[count]));
    return start;
}

unsigned char* rs::scriptobject::ScriptArray::getValueStart(ScriptArray& array) {
    auto start = reinterpret_cast<unsigned char*>(&(array.offsets[array.count]));
    return start;
}

const rs::scriptobject::ScriptObjectType* rs::scriptobject::ScriptArray::getTypeStart() const {
    auto start = reinterpret_cast<const unsigned char*>(this);
    start += size;
    start -= CalculateTypesSize(count);
    return reinterpret_cast<const ScriptObjectType*>(start);
}

rs::scriptobject::ScriptObjectType* rs::scriptobject::ScriptArray::getTypeStart(ScriptArray& array) {
    auto start = reinterpret_cast<unsigned char*>(&array);
    start += array.size;
    start -= CalculateTypesSize(array.count);
    return reinterpret_cast<ScriptObjectType*>(start);
}

unsigned rs::scriptobject::ScriptArray::CalculateSize(const ScriptArraySource& source) {
    unsigned fieldCount = source.count();
    unsigned size = sizeof(ScriptArray) + (fieldCount * sizeof(ScriptArray::offsets[0]));
    
    for (int i = 0; i < fieldCount; ++i) {
        auto type = source.type(i);
        
        switch (type) {
            case ScriptObjectType::String:
                size += source.getStringLength(i) + 1;
                break;
            case ScriptObjectType::Boolean:
                // booleans store their state in their valueOffset[] field
                size += 0;
                break;
            case ScriptObjectType::Double:
                size += sizeof(double);
                break;
            case ScriptObjectType::Int32:
                size += sizeof(std::int32_t);
                break;
            case ScriptObjectType::Null:
                size += 0;
                break;
            case ScriptObjectType::Object:
                size += sizeof(ScriptObjectPtr);
                break;
            case ScriptObjectType::Array:
                size += sizeof(ScriptArrayPtr);
                break;
            default:
                throw UnknownSourceFieldTypeException();
                break;
        }
    }
    
    // TODO: if the types are all the same this isn't required
    size += CalculateTypesSize(fieldCount);
    
    return size;
}

unsigned rs::scriptobject::ScriptArray::CalculateTypesSize(unsigned fieldCount) {
    return fieldCount * sizeof(ScriptObjectType);
}

unsigned rs::scriptobject::ScriptArray::getCount() const { 
    return count; 
}

rs::scriptobject::ScriptObjectType rs::scriptobject::ScriptArray::getType(int index) const {
    if (index >= 0 && index < count) {
        return getTypeStart()[index];
    } else {
        throw UnknownScriptArrayIndexException();
    }
}

const char* rs::scriptobject::ScriptArray::getString(int index) const {
    if (index < 0 || index >= count) {
        throw UnknownScriptArrayIndexException();
    }
    
    if (getTypeStart()[index] != ScriptObjectType::String) {
        throw TypeCastException();
    }
    
    auto str = reinterpret_cast<const char*>(getValueStart() + offsets[index]);
    return str;
}

double rs::scriptobject::ScriptArray::getDouble(int index) const {
    if (index < 0 || index >= count) {
        throw UnknownScriptArrayIndexException();
    }
    
    if (getTypeStart()[index] != ScriptObjectType::Double) {
        throw TypeCastException();
    }
    
    auto ptr = reinterpret_cast<const double*>(getValueStart() + offsets[index]);
    return *ptr;
}

bool rs::scriptobject::ScriptArray::getBoolean(int index) const {
    if (index < 0 || index >= count) {
        throw UnknownScriptArrayIndexException();
    }
    
    if (getTypeStart()[index] != ScriptObjectType::Boolean) {
        throw TypeCastException();
    }
    
    return (bool)offsets[index];
}

std::int32_t rs::scriptobject::ScriptArray::getInt32(int index) const {
    if (index < 0 || index >= count) {
        throw UnknownScriptArrayIndexException();
    }
    
    if (getTypeStart()[index] != ScriptObjectType::Int32) {
        throw TypeCastException();
    }
    
    auto ptr = reinterpret_cast<const std::int32_t*>(getValueStart() + offsets[index]);
    return *ptr;
}

const rs::scriptobject::ScriptObjectPtr rs::scriptobject::ScriptArray::getObject(int index) const {
    if (index < 0 || index >= count) {
        throw UnknownScriptArrayIndexException();
    }
    
    if (getTypeStart()[index] != ScriptObjectType::Object) {
        throw TypeCastException();
    }
    
    auto ptr = reinterpret_cast<const ScriptObjectPtr*>(getValueStart() + offsets[index]);
    return *ptr;
}

const rs::scriptobject::ScriptArrayPtr rs::scriptobject::ScriptArray::getArray(int index) const {
    if (index < 0 || index >= count) {
        throw UnknownScriptArrayIndexException();
    }
    
    if (getTypeStart()[index] != ScriptObjectType::Array) {
        throw TypeCastException();
    }
    
    auto ptr = reinterpret_cast<const ScriptArrayPtr*>(getValueStart() + offsets[index]);
    return *ptr;
}