#include "galgas2/C_Compiler.h"
#include "galgas2/C_galgas_io.h"
#include "galgas2/C_galgas_CLI_Options.h"
#include "utilities/C_PrologueEpilogue.h"

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

#include "all-declarations-4.h"

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Extension getter '@gtlData hasItemAtIndex'                                      *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_gtlData_hasItemAtIndex> gExtensionGetterTable_gtlData_hasItemAtIndex ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_hasItemAtIndex (const int32_t inClassIndex,
                                          enterExtensionGetter_gtlData_hasItemAtIndex inGetter) {
  gExtensionGetterTable_gtlData_hasItemAtIndex.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool callExtensionGetter_hasItemAtIndex (const cPtr_gtlData * inObject,
                                                const GALGAS_gtlInt in_index,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) {
  GALGAS_bool result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlData) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_gtlData_hasItemAtIndex f = NULL ;
    if (classIndex < gExtensionGetterTable_gtlData_hasItemAtIndex.count ()) {
      f = gExtensionGetterTable_gtlData_hasItemAtIndex (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_gtlData_hasItemAtIndex.count ()) {
           f = gExtensionGetterTable_gtlData_hasItemAtIndex (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_gtlData_hasItemAtIndex.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, in_index, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static GALGAS_bool extensionGetter_gtlData_hasItemAtIndex (const cPtr_gtlData * /* inObject */,
                                                           const GALGAS_gtlInt /* constinArgument_index */,
                                                           C_Compiler * /* inCompiler */
                                                           COMMA_UNUSED_LOCATION_ARGS) {
  GALGAS_bool result_result ; // Returned variable
  result_result = GALGAS_bool (false) ;
//---
  return result_result ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionGetter_gtlData_hasItemAtIndex (void) {
  enterExtensionGetter_hasItemAtIndex (kTypeDescriptor_GALGAS_gtlData.mSlotID,
                                       extensionGetter_gtlData_hasItemAtIndex) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_gtlData_hasItemAtIndex (void) {
  gExtensionGetterTable_gtlData_hasItemAtIndex.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_gtlData_hasItemAtIndex (defineExtensionGetter_gtlData_hasItemAtIndex,
                                                   freeExtensionGetter_gtlData_hasItemAtIndex) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Extension setter '@gtlData setItemAtIndex'                                      *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_gtlData_setItemAtIndex> gExtensionModifierTable_gtlData_setItemAtIndex ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_setItemAtIndex (const int32_t inClassIndex,
                                          extensionSetterSignature_gtlData_setItemAtIndex inModifier) {
  gExtensionModifierTable_gtlData_setItemAtIndex.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_setItemAtIndex (cPtr_gtlData * inObject,
                                         const GALGAS_gtlData constin_data,
                                         const GALGAS_gtlInt constin_index,
                                         C_Compiler * inCompiler
                                         COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlData) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_gtlData_setItemAtIndex f = NULL ;
    if (classIndex < gExtensionModifierTable_gtlData_setItemAtIndex.count ()) {
      f = gExtensionModifierTable_gtlData_setItemAtIndex (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_gtlData_setItemAtIndex.count ()) {
           f = gExtensionModifierTable_gtlData_setItemAtIndex (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_gtlData_setItemAtIndex.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_data, constin_index, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_gtlData_setItemAtIndex (cPtr_gtlData * inObject,
                                                    const GALGAS_gtlData /* constinArgument_data */,
                                                    const GALGAS_gtlInt constinArgument_index,
                                                    C_Compiler * inCompiler
                                                    COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_gtlData * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlData) ;
  const GALGAS_gtlData temp_0 = object ;
  TC_Array <C_FixItDescription> fixItArray1 ;
  inCompiler->emitSemanticError (callExtensionGetter_location ((const cPtr_gtlInt *) constinArgument_index.ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 348)), GALGAS_string ("a ").add_operation (extensionGetter_typeName (temp_0.getter_dynamicType (SOURCE_FILE ("gtl_data_types.galgas", 348)), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 348)), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 348)).add_operation (GALGAS_string (" is not a list"), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 348)), fixItArray1  COMMA_SOURCE_FILE ("gtl_data_types.galgas", 348)) ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_gtlData_setItemAtIndex (void) {
  enterExtensionSetter_setItemAtIndex (kTypeDescriptor_GALGAS_gtlData.mSlotID,
                                       extensionSetter_gtlData_setItemAtIndex) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_gtlData_setItemAtIndex (void) {
  gExtensionModifierTable_gtlData_setItemAtIndex.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_gtlData_setItemAtIndex (defineExtensionSetter_gtlData_setItemAtIndex,
                                                   freeExtensionModifier_gtlData_setItemAtIndex) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Extension setter '@gtlData deleteItemAtIndex'                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_gtlData_deleteItemAtIndex> gExtensionModifierTable_gtlData_deleteItemAtIndex ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_deleteItemAtIndex (const int32_t inClassIndex,
                                             extensionSetterSignature_gtlData_deleteItemAtIndex inModifier) {
  gExtensionModifierTable_gtlData_deleteItemAtIndex.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_deleteItemAtIndex (cPtr_gtlData * inObject,
                                            const GALGAS_gtlInt constin_index,
                                            C_Compiler * inCompiler
                                            COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlData) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_gtlData_deleteItemAtIndex f = NULL ;
    if (classIndex < gExtensionModifierTable_gtlData_deleteItemAtIndex.count ()) {
      f = gExtensionModifierTable_gtlData_deleteItemAtIndex (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_gtlData_deleteItemAtIndex.count ()) {
           f = gExtensionModifierTable_gtlData_deleteItemAtIndex (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_gtlData_deleteItemAtIndex.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_index, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_gtlData_deleteItemAtIndex (cPtr_gtlData * inObject,
                                                       const GALGAS_gtlInt constinArgument_index,
                                                       C_Compiler * inCompiler
                                                       COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_gtlData * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlData) ;
  const GALGAS_gtlData temp_0 = object ;
  TC_Array <C_FixItDescription> fixItArray1 ;
  inCompiler->emitSemanticError (callExtensionGetter_location ((const cPtr_gtlInt *) constinArgument_index.ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 354)), GALGAS_string ("a ").add_operation (extensionGetter_typeName (temp_0.getter_dynamicType (SOURCE_FILE ("gtl_data_types.galgas", 354)), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 354)), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 354)).add_operation (GALGAS_string (" is not a list"), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 354)), fixItArray1  COMMA_SOURCE_FILE ("gtl_data_types.galgas", 354)) ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_gtlData_deleteItemAtIndex (void) {
  enterExtensionSetter_deleteItemAtIndex (kTypeDescriptor_GALGAS_gtlData.mSlotID,
                                          extensionSetter_gtlData_deleteItemAtIndex) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_gtlData_deleteItemAtIndex (void) {
  gExtensionModifierTable_gtlData_deleteItemAtIndex.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_gtlData_deleteItemAtIndex (defineExtensionSetter_gtlData_deleteItemAtIndex,
                                                      freeExtensionModifier_gtlData_deleteItemAtIndex) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                       Extension setter '@gtlData appendItem'                                        *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_gtlData_appendItem> gExtensionModifierTable_gtlData_appendItem ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_appendItem (const int32_t inClassIndex,
                                      extensionSetterSignature_gtlData_appendItem inModifier) {
  gExtensionModifierTable_gtlData_appendItem.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_appendItem (cPtr_gtlData * inObject,
                                     const GALGAS_gtlData constin_item,
                                     C_Compiler * inCompiler
                                     COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlData) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_gtlData_appendItem f = NULL ;
    if (classIndex < gExtensionModifierTable_gtlData_appendItem.count ()) {
      f = gExtensionModifierTable_gtlData_appendItem (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_gtlData_appendItem.count ()) {
           f = gExtensionModifierTable_gtlData_appendItem (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_gtlData_appendItem.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_item, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_gtlData_appendItem (cPtr_gtlData * inObject,
                                                const GALGAS_gtlData constinArgument_item,
                                                C_Compiler * inCompiler
                                                COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_gtlData * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlData) ;
  const GALGAS_gtlData temp_0 = object ;
  TC_Array <C_FixItDescription> fixItArray1 ;
  inCompiler->emitSemanticError (callExtensionGetter_location ((const cPtr_gtlData *) constinArgument_item.ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 360)), GALGAS_string ("a ").add_operation (extensionGetter_typeName (temp_0.getter_dynamicType (SOURCE_FILE ("gtl_data_types.galgas", 360)), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 360)), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 360)).add_operation (GALGAS_string (" is not a list"), inCompiler COMMA_SOURCE_FILE ("gtl_data_types.galgas", 360)), fixItArray1  COMMA_SOURCE_FILE ("gtl_data_types.galgas", 360)) ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_gtlData_appendItem (void) {
  enterExtensionSetter_appendItem (kTypeDescriptor_GALGAS_gtlData.mSlotID,
                                   extensionSetter_gtlData_appendItem) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_gtlData_appendItem (void) {
  gExtensionModifierTable_gtlData_appendItem.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_gtlData_appendItem (defineExtensionSetter_gtlData_appendItem,
                                               freeExtensionModifier_gtlData_appendItem) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlUnconstructed::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlUnconstructed * p = (const cPtr_gtlUnconstructed *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlUnconstructed) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlUnconstructed::objectCompare (const GALGAS_gtlUnconstructed & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlUnconstructed::GALGAS_gtlUnconstructed (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlUnconstructed GALGAS_gtlUnconstructed::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlUnconstructed::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                                   GALGAS_lstring::constructor_default (HERE)
                                                   COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlUnconstructed::GALGAS_gtlUnconstructed (const cPtr_gtlUnconstructed * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlUnconstructed) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlUnconstructed GALGAS_gtlUnconstructed::constructor_new (const GALGAS_location & inAttribute_where,
                                                                  const GALGAS_lstring & inAttribute_meta
                                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlUnconstructed result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlUnconstructed (inAttribute_where, inAttribute_meta COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                      Pointer class for @gtlUnconstructed class                                      *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlUnconstructed::cPtr_gtlUnconstructed (const GALGAS_location & in_where,
                                              const GALGAS_lstring & in_meta
                                              COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlUnconstructed::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlUnconstructed ;
}

void cPtr_gtlUnconstructed::description (C_String & ioString,
                                         const int32_t inIndentation) const {
  ioString << "[@gtlUnconstructed:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlUnconstructed::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlUnconstructed (mProperty_where, mProperty_meta COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                               @gtlUnconstructed type                                                *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlUnconstructed ("gtlUnconstructed",
                                         & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlUnconstructed::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlUnconstructed ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlUnconstructed::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlUnconstructed (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlUnconstructed GALGAS_gtlUnconstructed::extractObject (const GALGAS_object & inObject,
                                                                C_Compiler * inCompiler
                                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlUnconstructed result ;
  const GALGAS_gtlUnconstructed * p = (const GALGAS_gtlUnconstructed *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlUnconstructed *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlUnconstructed", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlType::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlType * p = (const cPtr_gtlType *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlType) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_type.objectCompare (p->mProperty_type) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlType::objectCompare (const GALGAS_gtlType & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlType::GALGAS_gtlType (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlType::GALGAS_gtlType (const cPtr_gtlType * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlType) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlType GALGAS_gtlType::constructor_new (const GALGAS_location & inAttribute_where,
                                                const GALGAS_lstring & inAttribute_meta,
                                                const GALGAS_type & inAttribute_type
                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlType result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_type.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlType (inAttribute_where, inAttribute_meta, inAttribute_type COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_type GALGAS_gtlType::getter_type (UNUSED_LOCATION_ARGS) const {
  GALGAS_type result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlType * p = (const cPtr_gtlType *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlType) ;
    result = p->mProperty_type ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_type cPtr_gtlType::getter_type (UNUSED_LOCATION_ARGS) const {
  return mProperty_type ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                          Pointer class for @gtlType class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlType::cPtr_gtlType (const GALGAS_location & in_where,
                            const GALGAS_lstring & in_meta,
                            const GALGAS_type & in_type
                            COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_type (in_type) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlType::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlType ;
}

void cPtr_gtlType::description (C_String & ioString,
                                const int32_t inIndentation) const {
  ioString << "[@gtlType:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_type.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlType::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlType (mProperty_where, mProperty_meta, mProperty_type COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlType type                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlType ("gtlType",
                                & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlType::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlType ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlType::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlType (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlType GALGAS_gtlType::extractObject (const GALGAS_object & inObject,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlType result ;
  const GALGAS_gtlType * p = (const GALGAS_gtlType *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlType *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlType", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlEnum::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlEnum * p = (const cPtr_gtlEnum *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlEnum) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlEnum::objectCompare (const GALGAS_gtlEnum & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEnum::GALGAS_gtlEnum (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEnum GALGAS_gtlEnum::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlEnum::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                          GALGAS_lstring::constructor_default (HERE),
                                          GALGAS_string::constructor_default (HERE)
                                          COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEnum::GALGAS_gtlEnum (const cPtr_gtlEnum * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlEnum) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEnum GALGAS_gtlEnum::constructor_new (const GALGAS_location & inAttribute_where,
                                                const GALGAS_lstring & inAttribute_meta,
                                                const GALGAS_string & inAttribute_value
                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlEnum result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlEnum (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_string GALGAS_gtlEnum::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_string result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlEnum * p = (const cPtr_gtlEnum *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlEnum) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_string cPtr_gtlEnum::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                          Pointer class for @gtlEnum class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlEnum::cPtr_gtlEnum (const GALGAS_location & in_where,
                            const GALGAS_lstring & in_meta,
                            const GALGAS_string & in_value
                            COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlEnum::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlEnum ;
}

void cPtr_gtlEnum::description (C_String & ioString,
                                const int32_t inIndentation) const {
  ioString << "[@gtlEnum:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlEnum::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlEnum (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlEnum type                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlEnum ("gtlEnum",
                                & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlEnum::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlEnum ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlEnum::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlEnum (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEnum GALGAS_gtlEnum::extractObject (const GALGAS_object & inObject,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlEnum result ;
  const GALGAS_gtlEnum * p = (const GALGAS_gtlEnum *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlEnum *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlEnum", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlChar::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlChar * p = (const cPtr_gtlChar *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlChar) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlChar::objectCompare (const GALGAS_gtlChar & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlChar::GALGAS_gtlChar (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlChar GALGAS_gtlChar::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlChar::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                          GALGAS_lstring::constructor_default (HERE),
                                          GALGAS_char::constructor_default (HERE)
                                          COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlChar::GALGAS_gtlChar (const cPtr_gtlChar * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlChar) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlChar GALGAS_gtlChar::constructor_new (const GALGAS_location & inAttribute_where,
                                                const GALGAS_lstring & inAttribute_meta,
                                                const GALGAS_char & inAttribute_value
                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlChar result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlChar (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_char GALGAS_gtlChar::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_char result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlChar * p = (const cPtr_gtlChar *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlChar) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_char cPtr_gtlChar::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void GALGAS_gtlChar::setter_setValue (GALGAS_char inValue
                                      COMMA_LOCATION_ARGS) {
  if (NULL != mObjectPtr) {
    insulate (THERE) ;
    cPtr_gtlChar * p = (cPtr_gtlChar *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlChar) ;
    p->mProperty_value = inValue ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void cPtr_gtlChar::setter_setValue (GALGAS_char inValue
                                    COMMA_UNUSED_LOCATION_ARGS) {
  mProperty_value = inValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                          Pointer class for @gtlChar class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlChar::cPtr_gtlChar (const GALGAS_location & in_where,
                            const GALGAS_lstring & in_meta,
                            const GALGAS_char & in_value
                            COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlChar::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlChar ;
}

void cPtr_gtlChar::description (C_String & ioString,
                                const int32_t inIndentation) const {
  ioString << "[@gtlChar:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlChar::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlChar (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlChar type                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlChar ("gtlChar",
                                & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlChar::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlChar ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlChar::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlChar (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlChar GALGAS_gtlChar::extractObject (const GALGAS_object & inObject,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlChar result ;
  const GALGAS_gtlChar * p = (const GALGAS_gtlChar *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlChar *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlChar", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlInt::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlInt * p = (const cPtr_gtlInt *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlInt) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlInt::objectCompare (const GALGAS_gtlInt & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInt::GALGAS_gtlInt (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInt GALGAS_gtlInt::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlInt::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                         GALGAS_lstring::constructor_default (HERE),
                                         GALGAS_bigint::constructor_zero (HERE)
                                         COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInt::GALGAS_gtlInt (const cPtr_gtlInt * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlInt) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInt GALGAS_gtlInt::constructor_new (const GALGAS_location & inAttribute_where,
                                              const GALGAS_lstring & inAttribute_meta,
                                              const GALGAS_bigint & inAttribute_value
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlInt result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlInt (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bigint GALGAS_gtlInt::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_bigint result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlInt * p = (const cPtr_gtlInt *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlInt) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bigint cPtr_gtlInt::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void GALGAS_gtlInt::setter_setValue (GALGAS_bigint inValue
                                     COMMA_LOCATION_ARGS) {
  if (NULL != mObjectPtr) {
    insulate (THERE) ;
    cPtr_gtlInt * p = (cPtr_gtlInt *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlInt) ;
    p->mProperty_value = inValue ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void cPtr_gtlInt::setter_setValue (GALGAS_bigint inValue
                                   COMMA_UNUSED_LOCATION_ARGS) {
  mProperty_value = inValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                           Pointer class for @gtlInt class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlInt::cPtr_gtlInt (const GALGAS_location & in_where,
                          const GALGAS_lstring & in_meta,
                          const GALGAS_bigint & in_value
                          COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlInt::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlInt ;
}

void cPtr_gtlInt::description (C_String & ioString,
                               const int32_t inIndentation) const {
  ioString << "[@gtlInt:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlInt::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlInt (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlInt type                                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlInt ("gtlInt",
                               & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlInt::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlInt ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlInt::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlInt (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInt GALGAS_gtlInt::extractObject (const GALGAS_object & inObject,
                                            C_Compiler * inCompiler
                                            COMMA_LOCATION_ARGS) {
  GALGAS_gtlInt result ;
  const GALGAS_gtlInt * p = (const GALGAS_gtlInt *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlInt *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlInt", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlFloat::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlFloat * p = (const cPtr_gtlFloat *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlFloat) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlFloat::objectCompare (const GALGAS_gtlFloat & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFloat::GALGAS_gtlFloat (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFloat GALGAS_gtlFloat::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlFloat::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                           GALGAS_lstring::constructor_default (HERE),
                                           GALGAS_double::constructor_default (HERE)
                                           COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFloat::GALGAS_gtlFloat (const cPtr_gtlFloat * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlFloat) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFloat GALGAS_gtlFloat::constructor_new (const GALGAS_location & inAttribute_where,
                                                  const GALGAS_lstring & inAttribute_meta,
                                                  const GALGAS_double & inAttribute_value
                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlFloat result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlFloat (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_double GALGAS_gtlFloat::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_double result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlFloat * p = (const cPtr_gtlFloat *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlFloat) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_double cPtr_gtlFloat::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                          Pointer class for @gtlFloat class                                          *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlFloat::cPtr_gtlFloat (const GALGAS_location & in_where,
                              const GALGAS_lstring & in_meta,
                              const GALGAS_double & in_value
                              COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlFloat::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlFloat ;
}

void cPtr_gtlFloat::description (C_String & ioString,
                                 const int32_t inIndentation) const {
  ioString << "[@gtlFloat:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlFloat::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlFloat (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @gtlFloat type                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlFloat ("gtlFloat",
                                 & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlFloat::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlFloat ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlFloat::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlFloat (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFloat GALGAS_gtlFloat::extractObject (const GALGAS_object & inObject,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlFloat result ;
  const GALGAS_gtlFloat * p = (const GALGAS_gtlFloat *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlFloat *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlFloat", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlString::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlString * p = (const cPtr_gtlString *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlString) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlString::objectCompare (const GALGAS_gtlString & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlString::GALGAS_gtlString (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlString GALGAS_gtlString::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlString::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                            GALGAS_lstring::constructor_default (HERE),
                                            GALGAS_string::constructor_default (HERE)
                                            COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlString::GALGAS_gtlString (const cPtr_gtlString * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlString) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlString GALGAS_gtlString::constructor_new (const GALGAS_location & inAttribute_where,
                                                    const GALGAS_lstring & inAttribute_meta,
                                                    const GALGAS_string & inAttribute_value
                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlString result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlString (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_string GALGAS_gtlString::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_string result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlString * p = (const cPtr_gtlString *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlString) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_string cPtr_gtlString::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                         Pointer class for @gtlString class                                          *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlString::cPtr_gtlString (const GALGAS_location & in_where,
                                const GALGAS_lstring & in_meta,
                                const GALGAS_string & in_value
                                COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlString::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlString ;
}

void cPtr_gtlString::description (C_String & ioString,
                                  const int32_t inIndentation) const {
  ioString << "[@gtlString:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlString::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlString (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @gtlString type                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlString ("gtlString",
                                  & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlString::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlString ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlString::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlString (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlString GALGAS_gtlString::extractObject (const GALGAS_object & inObject,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlString result ;
  const GALGAS_gtlString * p = (const GALGAS_gtlString *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlString *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlString", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlBool::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlBool * p = (const cPtr_gtlBool *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlBool) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlBool::objectCompare (const GALGAS_gtlBool & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlBool::GALGAS_gtlBool (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlBool GALGAS_gtlBool::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlBool::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                          GALGAS_lstring::constructor_default (HERE),
                                          GALGAS_bool::constructor_default (HERE)
                                          COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlBool::GALGAS_gtlBool (const cPtr_gtlBool * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlBool) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlBool GALGAS_gtlBool::constructor_new (const GALGAS_location & inAttribute_where,
                                                const GALGAS_lstring & inAttribute_meta,
                                                const GALGAS_bool & inAttribute_value
                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlBool result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlBool (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool GALGAS_gtlBool::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_bool result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlBool * p = (const cPtr_gtlBool *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlBool) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool cPtr_gtlBool::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                          Pointer class for @gtlBool class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlBool::cPtr_gtlBool (const GALGAS_location & in_where,
                            const GALGAS_lstring & in_meta,
                            const GALGAS_bool & in_value
                            COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlBool::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlBool ;
}

void cPtr_gtlBool::description (C_String & ioString,
                                const int32_t inIndentation) const {
  ioString << "[@gtlBool:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlBool::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlBool (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlBool type                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlBool ("gtlBool",
                                & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlBool::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlBool ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlBool::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlBool (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlBool GALGAS_gtlBool::extractObject (const GALGAS_object & inObject,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlBool result ;
  const GALGAS_gtlBool * p = (const GALGAS_gtlBool *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlBool *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlBool", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlSet::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlSet * p = (const cPtr_gtlSet *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlSet) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlSet::objectCompare (const GALGAS_gtlSet & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSet::GALGAS_gtlSet (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSet GALGAS_gtlSet::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlSet::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                         GALGAS_lstring::constructor_default (HERE),
                                         GALGAS_lstringset::constructor_emptyMap (HERE)
                                         COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSet::GALGAS_gtlSet (const cPtr_gtlSet * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlSet) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSet GALGAS_gtlSet::constructor_new (const GALGAS_location & inAttribute_where,
                                              const GALGAS_lstring & inAttribute_meta,
                                              const GALGAS_lstringset & inAttribute_value
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlSet result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlSet (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstringset GALGAS_gtlSet::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstringset result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlSet * p = (const cPtr_gtlSet *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlSet) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstringset cPtr_gtlSet::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void GALGAS_gtlSet::setter_setValue (GALGAS_lstringset inValue
                                     COMMA_LOCATION_ARGS) {
  if (NULL != mObjectPtr) {
    insulate (THERE) ;
    cPtr_gtlSet * p = (cPtr_gtlSet *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlSet) ;
    p->mProperty_value = inValue ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void cPtr_gtlSet::setter_setValue (GALGAS_lstringset inValue
                                   COMMA_UNUSED_LOCATION_ARGS) {
  mProperty_value = inValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                           Pointer class for @gtlSet class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlSet::cPtr_gtlSet (const GALGAS_location & in_where,
                          const GALGAS_lstring & in_meta,
                          const GALGAS_lstringset & in_value
                          COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlSet::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlSet ;
}

void cPtr_gtlSet::description (C_String & ioString,
                               const int32_t inIndentation) const {
  ioString << "[@gtlSet:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlSet::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlSet (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlSet type                                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlSet ("gtlSet",
                               & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlSet::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlSet ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlSet::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlSet (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSet GALGAS_gtlSet::extractObject (const GALGAS_object & inObject,
                                            C_Compiler * inCompiler
                                            COMMA_LOCATION_ARGS) {
  GALGAS_gtlSet result ;
  const GALGAS_gtlSet * p = (const GALGAS_gtlSet *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlSet *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlSet", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlStruct::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlStruct * p = (const cPtr_gtlStruct *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlStruct) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlStruct::objectCompare (const GALGAS_gtlStruct & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlStruct::GALGAS_gtlStruct (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlStruct GALGAS_gtlStruct::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlStruct::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                            GALGAS_lstring::constructor_default (HERE),
                                            GALGAS_gtlVarMap::constructor_emptyMap (HERE)
                                            COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlStruct::GALGAS_gtlStruct (const cPtr_gtlStruct * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlStruct) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlStruct GALGAS_gtlStruct::constructor_new (const GALGAS_location & inAttribute_where,
                                                    const GALGAS_lstring & inAttribute_meta,
                                                    const GALGAS_gtlVarMap & inAttribute_value
                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlStruct result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlStruct (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarMap GALGAS_gtlStruct::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlVarMap result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlStruct * p = (const cPtr_gtlStruct *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlStruct) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarMap cPtr_gtlStruct::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void GALGAS_gtlStruct::setter_setValue (GALGAS_gtlVarMap inValue
                                        COMMA_LOCATION_ARGS) {
  if (NULL != mObjectPtr) {
    insulate (THERE) ;
    cPtr_gtlStruct * p = (cPtr_gtlStruct *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlStruct) ;
    p->mProperty_value = inValue ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void cPtr_gtlStruct::setter_setValue (GALGAS_gtlVarMap inValue
                                      COMMA_UNUSED_LOCATION_ARGS) {
  mProperty_value = inValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                         Pointer class for @gtlStruct class                                          *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlStruct::cPtr_gtlStruct (const GALGAS_location & in_where,
                                const GALGAS_lstring & in_meta,
                                const GALGAS_gtlVarMap & in_value
                                COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlStruct::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlStruct ;
}

void cPtr_gtlStruct::description (C_String & ioString,
                                  const int32_t inIndentation) const {
  ioString << "[@gtlStruct:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlStruct::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlStruct (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @gtlStruct type                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlStruct ("gtlStruct",
                                  & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlStruct::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlStruct ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlStruct::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlStruct (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlStruct GALGAS_gtlStruct::extractObject (const GALGAS_object & inObject,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlStruct result ;
  const GALGAS_gtlStruct * p = (const GALGAS_gtlStruct *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlStruct *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlStruct", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlList::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlList * p = (const cPtr_gtlList *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlList) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlList::objectCompare (const GALGAS_gtlList & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlList::GALGAS_gtlList (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlList GALGAS_gtlList::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlList::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                          GALGAS_lstring::constructor_default (HERE),
                                          GALGAS_list::constructor_emptyList (HERE)
                                          COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlList::GALGAS_gtlList (const cPtr_gtlList * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlList) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlList GALGAS_gtlList::constructor_new (const GALGAS_location & inAttribute_where,
                                                const GALGAS_lstring & inAttribute_meta,
                                                const GALGAS_list & inAttribute_value
                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlList result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlList (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_list GALGAS_gtlList::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_list result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlList * p = (const cPtr_gtlList *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlList) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_list cPtr_gtlList::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                          Pointer class for @gtlList class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlList::cPtr_gtlList (const GALGAS_location & in_where,
                            const GALGAS_lstring & in_meta,
                            const GALGAS_list & in_value
                            COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlList::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlList ;
}

void cPtr_gtlList::description (C_String & ioString,
                                const int32_t inIndentation) const {
  ioString << "[@gtlList:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlList::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlList (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlList type                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlList ("gtlList",
                                & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlList::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlList::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlList (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlList GALGAS_gtlList::extractObject (const GALGAS_object & inObject,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlList result ;
  const GALGAS_gtlList * p = (const GALGAS_gtlList *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlList *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlList", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlMap::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlMap * p = (const cPtr_gtlMap *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlMap) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlMap::objectCompare (const GALGAS_gtlMap & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlMap::GALGAS_gtlMap (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlMap GALGAS_gtlMap::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlMap::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                         GALGAS_lstring::constructor_default (HERE),
                                         GALGAS_gtlVarMap::constructor_emptyMap (HERE)
                                         COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlMap::GALGAS_gtlMap (const cPtr_gtlMap * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlMap) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlMap GALGAS_gtlMap::constructor_new (const GALGAS_location & inAttribute_where,
                                              const GALGAS_lstring & inAttribute_meta,
                                              const GALGAS_gtlVarMap & inAttribute_value
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlMap result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlMap (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarMap GALGAS_gtlMap::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlVarMap result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlMap * p = (const cPtr_gtlMap *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlMap) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarMap cPtr_gtlMap::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void GALGAS_gtlMap::setter_setValue (GALGAS_gtlVarMap inValue
                                     COMMA_LOCATION_ARGS) {
  if (NULL != mObjectPtr) {
    insulate (THERE) ;
    cPtr_gtlMap * p = (cPtr_gtlMap *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlMap) ;
    p->mProperty_value = inValue ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void cPtr_gtlMap::setter_setValue (GALGAS_gtlVarMap inValue
                                   COMMA_UNUSED_LOCATION_ARGS) {
  mProperty_value = inValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                           Pointer class for @gtlMap class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlMap::cPtr_gtlMap (const GALGAS_location & in_where,
                          const GALGAS_lstring & in_meta,
                          const GALGAS_gtlVarMap & in_value
                          COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlMap::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlMap ;
}

void cPtr_gtlMap::description (C_String & ioString,
                               const int32_t inIndentation) const {
  ioString << "[@gtlMap:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlMap::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlMap (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlMap type                                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlMap ("gtlMap",
                               & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlMap::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlMap ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlMap::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlMap (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlMap GALGAS_gtlMap::extractObject (const GALGAS_object & inObject,
                                            C_Compiler * inCompiler
                                            COMMA_LOCATION_ARGS) {
  GALGAS_gtlMap result ;
  const GALGAS_gtlMap * p = (const GALGAS_gtlMap *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlMap *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlMap", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlExpr::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlExpr * p = (const cPtr_gtlExpr *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlExpr) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_meta.objectCompare (p->mProperty_meta) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_value.objectCompare (p->mProperty_value) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlExpr::objectCompare (const GALGAS_gtlExpr & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpr::GALGAS_gtlExpr (void) :
GALGAS_gtlData () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpr::GALGAS_gtlExpr (const cPtr_gtlExpr * inSourcePtr) :
GALGAS_gtlData (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlExpr) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpr GALGAS_gtlExpr::constructor_new (const GALGAS_location & inAttribute_where,
                                                const GALGAS_lstring & inAttribute_meta,
                                                const GALGAS_gtlExpression & inAttribute_value
                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlExpr result ;
  if (inAttribute_where.isValid () && inAttribute_meta.isValid () && inAttribute_value.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlExpr (inAttribute_where, inAttribute_meta, inAttribute_value COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlExpr::getter_value (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlExpr * p = (const cPtr_gtlExpr *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlExpr) ;
    result = p->mProperty_value ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlExpr::getter_value (UNUSED_LOCATION_ARGS) const {
  return mProperty_value ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void GALGAS_gtlExpr::setter_setValue (GALGAS_gtlExpression inValue
                                      COMMA_LOCATION_ARGS) {
  if (NULL != mObjectPtr) {
    insulate (THERE) ;
    cPtr_gtlExpr * p = (cPtr_gtlExpr *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlExpr) ;
    p->mProperty_value = inValue ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void cPtr_gtlExpr::setter_setValue (GALGAS_gtlExpression inValue
                                    COMMA_UNUSED_LOCATION_ARGS) {
  mProperty_value = inValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                          Pointer class for @gtlExpr class                                           *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlExpr::cPtr_gtlExpr (const GALGAS_location & in_where,
                            const GALGAS_lstring & in_meta,
                            const GALGAS_gtlExpression & in_value
                            COMMA_LOCATION_ARGS) :
cPtr_gtlData (in_where, in_meta COMMA_THERE),
mProperty_value (in_value) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlExpr::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlExpr ;
}

void cPtr_gtlExpr::description (C_String & ioString,
                                const int32_t inIndentation) const {
  ioString << "[@gtlExpr:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_meta.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_value.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlExpr::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlExpr (mProperty_where, mProperty_meta, mProperty_value COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                    @gtlExpr type                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlExpr ("gtlExpr",
                                & kTypeDescriptor_GALGAS_gtlData) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlExpr::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlExpr ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlExpr::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlExpr (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpr GALGAS_gtlExpr::extractObject (const GALGAS_object & inObject,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlExpr result ;
  const GALGAS_gtlExpr * p = (const GALGAS_gtlExpr *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlExpr *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlExpr", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlExecutableEntity::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlExecutableEntity * p = (const cPtr_gtlExecutableEntity *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlExecutableEntity) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_name.objectCompare (p->mProperty_name) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_formalArguments.objectCompare (p->mProperty_formalArguments) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_instructions.objectCompare (p->mProperty_instructions) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlExecutableEntity::objectCompare (const GALGAS_gtlExecutableEntity & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExecutableEntity::GALGAS_gtlExecutableEntity (void) :
AC_GALGAS_class (false) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExecutableEntity GALGAS_gtlExecutableEntity::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlExecutableEntity::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                                      GALGAS_lstring::constructor_default (HERE),
                                                      GALGAS_gtlArgumentList::constructor_emptyList (HERE),
                                                      GALGAS_gtlInstructionList::constructor_emptyList (HERE)
                                                      COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExecutableEntity::GALGAS_gtlExecutableEntity (const cPtr_gtlExecutableEntity * inSourcePtr) :
AC_GALGAS_class (inSourcePtr, false) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlExecutableEntity) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExecutableEntity GALGAS_gtlExecutableEntity::constructor_new (const GALGAS_location & inAttribute_where,
                                                                        const GALGAS_lstring & inAttribute_name,
                                                                        const GALGAS_gtlArgumentList & inAttribute_formalArguments,
                                                                        const GALGAS_gtlInstructionList & inAttribute_instructions
                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlExecutableEntity result ;
  if (inAttribute_where.isValid () && inAttribute_name.isValid () && inAttribute_formalArguments.isValid () && inAttribute_instructions.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlExecutableEntity (inAttribute_where, inAttribute_name, inAttribute_formalArguments, inAttribute_instructions COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_location GALGAS_gtlExecutableEntity::getter_where (UNUSED_LOCATION_ARGS) const {
  GALGAS_location result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlExecutableEntity * p = (const cPtr_gtlExecutableEntity *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlExecutableEntity) ;
    result = p->mProperty_where ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_location cPtr_gtlExecutableEntity::getter_where (UNUSED_LOCATION_ARGS) const {
  return mProperty_where ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlExecutableEntity::getter_name (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlExecutableEntity * p = (const cPtr_gtlExecutableEntity *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlExecutableEntity) ;
    result = p->mProperty_name ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlExecutableEntity::getter_name (UNUSED_LOCATION_ARGS) const {
  return mProperty_name ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlArgumentList GALGAS_gtlExecutableEntity::getter_formalArguments (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlArgumentList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlExecutableEntity * p = (const cPtr_gtlExecutableEntity *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlExecutableEntity) ;
    result = p->mProperty_formalArguments ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlArgumentList cPtr_gtlExecutableEntity::getter_formalArguments (UNUSED_LOCATION_ARGS) const {
  return mProperty_formalArguments ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlExecutableEntity::getter_instructions (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlExecutableEntity * p = (const cPtr_gtlExecutableEntity *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlExecutableEntity) ;
    result = p->mProperty_instructions ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlExecutableEntity::getter_instructions (UNUSED_LOCATION_ARGS) const {
  return mProperty_instructions ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                    Pointer class for @gtlExecutableEntity class                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlExecutableEntity::cPtr_gtlExecutableEntity (const GALGAS_location & in_where,
                                                    const GALGAS_lstring & in_name,
                                                    const GALGAS_gtlArgumentList & in_formalArguments,
                                                    const GALGAS_gtlInstructionList & in_instructions
                                                    COMMA_LOCATION_ARGS) :
acPtr_class (THERE),
mProperty_where (in_where),
mProperty_name (in_name),
mProperty_formalArguments (in_formalArguments),
mProperty_instructions (in_instructions) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlExecutableEntity::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlExecutableEntity ;
}

void cPtr_gtlExecutableEntity::description (C_String & ioString,
                                            const int32_t inIndentation) const {
  ioString << "[@gtlExecutableEntity:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_name.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_formalArguments.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_instructions.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlExecutableEntity::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlExecutableEntity (mProperty_where, mProperty_name, mProperty_formalArguments, mProperty_instructions COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                              @gtlExecutableEntity type                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlExecutableEntity ("gtlExecutableEntity",
                                            NULL) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlExecutableEntity::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlExecutableEntity ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlExecutableEntity::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlExecutableEntity (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExecutableEntity GALGAS_gtlExecutableEntity::extractObject (const GALGAS_object & inObject,
                                                                      C_Compiler * inCompiler
                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlExecutableEntity result ;
  const GALGAS_gtlExecutableEntity * p = (const GALGAS_gtlExecutableEntity *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlExecutableEntity *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlExecutableEntity", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                               Extension method '@gtlExecutableEntity checkArguments'                                *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_gtlExecutableEntity_checkArguments> gExtensionMethodTable_gtlExecutableEntity_checkArguments ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_checkArguments (const int32_t inClassIndex,
                                          extensionMethodSignature_gtlExecutableEntity_checkArguments inMethod) {
  gExtensionMethodTable_gtlExecutableEntity_checkArguments.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_checkArguments (const cPtr_gtlExecutableEntity * inObject,
                                         const GALGAS_location constin_fromLocation,
                                         const GALGAS_gtlDataList constin_actualArguments,
                                         GALGAS_gtlData & out_entityVariableMap,
                                         GALGAS_bool & out_result,
                                         C_Compiler * inCompiler
                                         COMMA_LOCATION_ARGS) {
  out_entityVariableMap.drop () ;
  out_result.drop () ;
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlExecutableEntity) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_gtlExecutableEntity_checkArguments f = NULL ;
    if (classIndex < gExtensionMethodTable_gtlExecutableEntity_checkArguments.count ()) {
      f = gExtensionMethodTable_gtlExecutableEntity_checkArguments (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_gtlExecutableEntity_checkArguments.count ()) {
           f = gExtensionMethodTable_gtlExecutableEntity_checkArguments (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_gtlExecutableEntity_checkArguments.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, constin_fromLocation, constin_actualArguments, out_entityVariableMap, out_result, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_gtlExecutableEntity_checkArguments (const cPtr_gtlExecutableEntity * inObject,
                                                                const GALGAS_location constinArgument_fromLocation,
                                                                const GALGAS_gtlDataList constinArgument_actualArguments,
                                                                GALGAS_gtlData & outArgument_entityVariableMap,
                                                                GALGAS_bool & outArgument_result,
                                                                C_Compiler * inCompiler
                                                                COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_gtlExecutableEntity * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlExecutableEntity) ;
  outArgument_result = GALGAS_bool (true) ;
  outArgument_entityVariableMap = GALGAS_gtlStruct::constructor_new (constinArgument_fromLocation, function_emptylstring (inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 52)), GALGAS_gtlVarMap::constructor_emptyMap (SOURCE_FILE ("gtl_module.galgas", 53))  COMMA_SOURCE_FILE ("gtl_module.galgas", 50)) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsNotEqual, object->mProperty_formalArguments.getter_length (SOURCE_FILE ("gtl_module.galgas", 56)).objectCompare (constinArgument_actualArguments.getter_length (SOURCE_FILE ("gtl_module.galgas", 56)))).boolEnum () ;
    if (kBoolTrue == test_0) {
      const GALGAS_gtlExecutableEntity temp_1 = object ;
      GALGAS_string temp_2 ;
      const enumGalgasBool test_3 = GALGAS_bool (kIsEqual, temp_1.getter_dynamicType (SOURCE_FILE ("gtl_module.galgas", 58)).objectCompare (GALGAS_type (& kTypeDescriptor_GALGAS_gtlProcedure))).boolEnum () ;
      if (kBoolTrue == test_3) {
        temp_2 = GALGAS_string ("procedure '") ;
      }else if (kBoolFalse == test_3) {
        temp_2 = GALGAS_string ("function '") ;
      }
      TC_Array <C_FixItDescription> fixItArray4 ;
      inCompiler->emitSemanticError (constinArgument_fromLocation, GALGAS_string ("calling ").add_operation (temp_2, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 57)).add_operation (object->mProperty_name.getter_string (SOURCE_FILE ("gtl_module.galgas", 62)), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 62)).add_operation (GALGAS_string ("' needs "), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 63)).add_operation (object->mProperty_formalArguments.getter_length (SOURCE_FILE ("gtl_module.galgas", 63)).getter_string (SOURCE_FILE ("gtl_module.galgas", 63)), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 63)).add_operation (GALGAS_string (" arguments"), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 63)), fixItArray4  COMMA_SOURCE_FILE ("gtl_module.galgas", 57)) ;
    }
  }
  if (kBoolFalse == test_0) {
    cEnumerator_gtlArgumentList enumerator_1631 (object->mProperty_formalArguments, kENUMERATION_UP) ;
    cEnumerator_gtlDataList enumerator_1654 (constinArgument_actualArguments, kENUMERATION_UP) ;
    while (enumerator_1631.hasCurrentObject () && enumerator_1654.hasCurrentObject ()) {
      enumGalgasBool test_5 = kBoolTrue ;
      if (kBoolTrue == test_5) {
        test_5 = GALGAS_bool (kIsNotEqual, enumerator_1654.current_data (HERE).getter_dynamicType (SOURCE_FILE ("gtl_module.galgas", 67)).objectCompare (enumerator_1631.current_type (HERE))).operator_and (enumerator_1631.current_typed (HERE) COMMA_SOURCE_FILE ("gtl_module.galgas", 67)).boolEnum () ;
        if (kBoolTrue == test_5) {
          TC_Array <C_FixItDescription> fixItArray6 ;
          inCompiler->emitSemanticError (callExtensionGetter_location ((const cPtr_gtlData *) enumerator_1654.current_data (HERE).ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 68)), extensionGetter_typeName (enumerator_1631.current_type (HERE), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 68)).add_operation (GALGAS_string (" expected for "), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 68)).add_operation (enumerator_1631.current_name (HERE).getter_string (SOURCE_FILE ("gtl_module.galgas", 68)), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 68)), fixItArray6  COMMA_SOURCE_FILE ("gtl_module.galgas", 68)) ;
          outArgument_result = GALGAS_bool (false) ;
        }
      }
      if (kBoolFalse == test_5) {
        {
        outArgument_entityVariableMap.insulate (HERE) ;
        cPtr_gtlData * ptr_1843 = (cPtr_gtlData *) outArgument_entityVariableMap.ptr () ;
        callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_1843, enumerator_1631.current_name (HERE), enumerator_1654.current_data (HERE), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 71)) ;
        }
      }
      enumerator_1631.gotoNextObject () ;
      enumerator_1654.gotoNextObject () ;
    }
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_gtlExecutableEntity_checkArguments (void) {
  enterExtensionMethod_checkArguments (kTypeDescriptor_GALGAS_gtlExecutableEntity.mSlotID,
                                       extensionMethod_gtlExecutableEntity_checkArguments) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_gtlExecutableEntity_checkArguments (void) {
  gExtensionMethodTable_gtlExecutableEntity_checkArguments.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_gtlExecutableEntity_checkArguments (defineExtensionMethod_gtlExecutableEntity_checkArguments,
                                                               freeExtensionMethod_gtlExecutableEntity_checkArguments) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlProcedure::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlProcedure * p = (const cPtr_gtlProcedure *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlProcedure) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_name.objectCompare (p->mProperty_name) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_formalArguments.objectCompare (p->mProperty_formalArguments) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_instructions.objectCompare (p->mProperty_instructions) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlProcedure::objectCompare (const GALGAS_gtlProcedure & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlProcedure::GALGAS_gtlProcedure (void) :
GALGAS_gtlExecutableEntity () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlProcedure GALGAS_gtlProcedure::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlProcedure::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                               GALGAS_lstring::constructor_default (HERE),
                                               GALGAS_gtlArgumentList::constructor_emptyList (HERE),
                                               GALGAS_gtlInstructionList::constructor_emptyList (HERE)
                                               COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlProcedure::GALGAS_gtlProcedure (const cPtr_gtlProcedure * inSourcePtr) :
GALGAS_gtlExecutableEntity (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlProcedure) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlProcedure GALGAS_gtlProcedure::constructor_new (const GALGAS_location & inAttribute_where,
                                                          const GALGAS_lstring & inAttribute_name,
                                                          const GALGAS_gtlArgumentList & inAttribute_formalArguments,
                                                          const GALGAS_gtlInstructionList & inAttribute_instructions
                                                          COMMA_LOCATION_ARGS) {
  GALGAS_gtlProcedure result ;
  if (inAttribute_where.isValid () && inAttribute_name.isValid () && inAttribute_formalArguments.isValid () && inAttribute_instructions.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlProcedure (inAttribute_where, inAttribute_name, inAttribute_formalArguments, inAttribute_instructions COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                        Pointer class for @gtlProcedure class                                        *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlProcedure::cPtr_gtlProcedure (const GALGAS_location & in_where,
                                      const GALGAS_lstring & in_name,
                                      const GALGAS_gtlArgumentList & in_formalArguments,
                                      const GALGAS_gtlInstructionList & in_instructions
                                      COMMA_LOCATION_ARGS) :
cPtr_gtlExecutableEntity (in_where, in_name, in_formalArguments, in_instructions COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlProcedure::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlProcedure ;
}

void cPtr_gtlProcedure::description (C_String & ioString,
                                     const int32_t inIndentation) const {
  ioString << "[@gtlProcedure:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_name.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_formalArguments.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_instructions.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlProcedure::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlProcedure (mProperty_where, mProperty_name, mProperty_formalArguments, mProperty_instructions COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                 @gtlProcedure type                                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlProcedure ("gtlProcedure",
                                     & kTypeDescriptor_GALGAS_gtlExecutableEntity) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlProcedure::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlProcedure ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlProcedure::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlProcedure (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlProcedure GALGAS_gtlProcedure::extractObject (const GALGAS_object & inObject,
                                                        C_Compiler * inCompiler
                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlProcedure result ;
  const GALGAS_gtlProcedure * p = (const GALGAS_gtlProcedure *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlProcedure *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlProcedure", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                        Extension method '@gtlProcedure call'                                        *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_gtlProcedure_call> gExtensionMethodTable_gtlProcedure_call ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_call (const int32_t inClassIndex,
                                extensionMethodSignature_gtlProcedure_call inMethod) {
  gExtensionMethodTable_gtlProcedure_call.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_call (const cPtr_gtlProcedure * inObject,
                               GALGAS_gtlContext & io_context,
                               GALGAS_library & io_lib,
                               GALGAS_string & io_outputString,
                               const GALGAS_location constin_fromLocation,
                               const GALGAS_gtlDataList constin_actualArguments,
                               C_Compiler * inCompiler
                               COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlProcedure) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_gtlProcedure_call f = NULL ;
    if (classIndex < gExtensionMethodTable_gtlProcedure_call.count ()) {
      f = gExtensionMethodTable_gtlProcedure_call (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_gtlProcedure_call.count ()) {
           f = gExtensionMethodTable_gtlProcedure_call (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_gtlProcedure_call.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, io_context, io_lib, io_outputString, constin_fromLocation, constin_actualArguments, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_gtlProcedure_call (const cPtr_gtlProcedure * inObject,
                                               GALGAS_gtlContext & ioArgument_context,
                                               GALGAS_library & ioArgument_lib,
                                               GALGAS_string & ioArgument_outputString,
                                               const GALGAS_location constinArgument_fromLocation,
                                               const GALGAS_gtlDataList constinArgument_actualArguments,
                                               C_Compiler * inCompiler
                                               COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_gtlProcedure * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlProcedure) ;
  GALGAS_gtlData var_vars_2288 ;
  GALGAS_bool var_ok_2298 ;
  const GALGAS_gtlProcedure temp_0 = object ;
  callExtensionMethod_checkArguments ((const cPtr_gtlProcedure *) temp_0.ptr (), constinArgument_fromLocation, constinArgument_actualArguments, var_vars_2288, var_ok_2298, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 89)) ;
  enumGalgasBool test_1 = kBoolTrue ;
  if (kBoolTrue == test_1) {
    test_1 = var_ok_2298.boolEnum () ;
    if (kBoolTrue == test_1) {
      extensionMethod_execute (object->mProperty_instructions, ioArgument_context, var_vars_2288, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 92)) ;
    }
  }
  if (kBoolFalse == test_1) {
    TC_Array <C_FixItDescription> fixItArray2 ;
    inCompiler->emitSemanticError (constinArgument_fromLocation, GALGAS_string ("procedure call failed"), fixItArray2  COMMA_SOURCE_FILE ("gtl_module.galgas", 94)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_gtlProcedure_call (void) {
  enterExtensionMethod_call (kTypeDescriptor_GALGAS_gtlProcedure.mSlotID,
                             extensionMethod_gtlProcedure_call) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_gtlProcedure_call (void) {
  gExtensionMethodTable_gtlProcedure_call.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_gtlProcedure_call (defineExtensionMethod_gtlProcedure_call,
                                              freeExtensionMethod_gtlProcedure_call) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlFunction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlFunction * p = (const cPtr_gtlFunction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlFunction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_name.objectCompare (p->mProperty_name) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_formalArguments.objectCompare (p->mProperty_formalArguments) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_instructions.objectCompare (p->mProperty_instructions) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_returnVariable.objectCompare (p->mProperty_returnVariable) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlFunction::objectCompare (const GALGAS_gtlFunction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFunction::GALGAS_gtlFunction (void) :
GALGAS_gtlExecutableEntity () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFunction GALGAS_gtlFunction::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlFunction::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                              GALGAS_lstring::constructor_default (HERE),
                                              GALGAS_gtlArgumentList::constructor_emptyList (HERE),
                                              GALGAS_gtlInstructionList::constructor_emptyList (HERE),
                                              GALGAS_lstring::constructor_default (HERE)
                                              COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFunction::GALGAS_gtlFunction (const cPtr_gtlFunction * inSourcePtr) :
GALGAS_gtlExecutableEntity (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlFunction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFunction GALGAS_gtlFunction::constructor_new (const GALGAS_location & inAttribute_where,
                                                        const GALGAS_lstring & inAttribute_name,
                                                        const GALGAS_gtlArgumentList & inAttribute_formalArguments,
                                                        const GALGAS_gtlInstructionList & inAttribute_instructions,
                                                        const GALGAS_lstring & inAttribute_returnVariable
                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlFunction result ;
  if (inAttribute_where.isValid () && inAttribute_name.isValid () && inAttribute_formalArguments.isValid () && inAttribute_instructions.isValid () && inAttribute_returnVariable.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlFunction (inAttribute_where, inAttribute_name, inAttribute_formalArguments, inAttribute_instructions, inAttribute_returnVariable COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlFunction::getter_returnVariable (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlFunction * p = (const cPtr_gtlFunction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlFunction) ;
    result = p->mProperty_returnVariable ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlFunction::getter_returnVariable (UNUSED_LOCATION_ARGS) const {
  return mProperty_returnVariable ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                        Pointer class for @gtlFunction class                                         *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlFunction::cPtr_gtlFunction (const GALGAS_location & in_where,
                                    const GALGAS_lstring & in_name,
                                    const GALGAS_gtlArgumentList & in_formalArguments,
                                    const GALGAS_gtlInstructionList & in_instructions,
                                    const GALGAS_lstring & in_returnVariable
                                    COMMA_LOCATION_ARGS) :
cPtr_gtlExecutableEntity (in_where, in_name, in_formalArguments, in_instructions COMMA_THERE),
mProperty_returnVariable (in_returnVariable) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlFunction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlFunction ;
}

void cPtr_gtlFunction::description (C_String & ioString,
                                    const int32_t inIndentation) const {
  ioString << "[@gtlFunction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_name.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_formalArguments.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_instructions.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_returnVariable.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlFunction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlFunction (mProperty_where, mProperty_name, mProperty_formalArguments, mProperty_instructions, mProperty_returnVariable COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                  @gtlFunction type                                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlFunction ("gtlFunction",
                                    & kTypeDescriptor_GALGAS_gtlExecutableEntity) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlFunction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlFunction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlFunction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlFunction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFunction GALGAS_gtlFunction::extractObject (const GALGAS_object & inObject,
                                                      C_Compiler * inCompiler
                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlFunction result ;
  const GALGAS_gtlFunction * p = (const GALGAS_gtlFunction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlFunction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlFunction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                        Extension getter '@gtlFunction call'                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_gtlFunction_call> gExtensionGetterTable_gtlFunction_call ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_call (const int32_t inClassIndex,
                                enterExtensionGetter_gtlFunction_call inGetter) {
  gExtensionGetterTable_gtlFunction_call.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlData callExtensionGetter_call (const cPtr_gtlFunction * inObject,
                                         const GALGAS_location in_fromLocation,
                                         GALGAS_gtlContext in_context,
                                         GALGAS_library in_lib,
                                         const GALGAS_gtlDataList in_actualArguments,
                                         C_Compiler * inCompiler
                                         COMMA_LOCATION_ARGS) {
  GALGAS_gtlData result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlFunction) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_gtlFunction_call f = NULL ;
    if (classIndex < gExtensionGetterTable_gtlFunction_call.count ()) {
      f = gExtensionGetterTable_gtlFunction_call (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_gtlFunction_call.count ()) {
           f = gExtensionGetterTable_gtlFunction_call (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_gtlFunction_call.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, in_fromLocation, in_context, in_lib, in_actualArguments, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static GALGAS_gtlData extensionGetter_gtlFunction_call (const cPtr_gtlFunction * inObject,
                                                        const GALGAS_location constinArgument_fromLocation,
                                                        GALGAS_gtlContext inArgument_context,
                                                        GALGAS_library inArgument_lib,
                                                        const GALGAS_gtlDataList constinArgument_actualArguments,
                                                        C_Compiler * inCompiler
                                                        COMMA_UNUSED_LOCATION_ARGS) {
  GALGAS_gtlData result_result ; // Returned variable
  const cPtr_gtlFunction * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlFunction) ;
  GALGAS_gtlData var_funcVariableMap_2854 ;
  GALGAS_bool var_ok_2864 ;
  const GALGAS_gtlFunction temp_0 = object ;
  callExtensionMethod_checkArguments ((const cPtr_gtlFunction *) temp_0.ptr (), constinArgument_fromLocation, constinArgument_actualArguments, var_funcVariableMap_2854, var_ok_2864, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 111)) ;
  {
  var_funcVariableMap_2854.insulate (HERE) ;
  cPtr_gtlData * ptr_2886 = (cPtr_gtlData *) var_funcVariableMap_2854.ptr () ;
  callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_2886, object->mProperty_returnVariable, GALGAS_gtlUnconstructed::constructor_new (object->mProperty_returnVariable.getter_location (SOURCE_FILE ("gtl_module.galgas", 115)), function_emptylstring (inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 115))  COMMA_SOURCE_FILE ("gtl_module.galgas", 115)), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 113)) ;
  }
  enumGalgasBool test_1 = kBoolTrue ;
  if (kBoolTrue == test_1) {
    test_1 = var_ok_2864.boolEnum () ;
    if (kBoolTrue == test_1) {
      GALGAS_string var_outputString_3036 = GALGAS_string::makeEmptyString () ;
      extensionMethod_execute (object->mProperty_instructions, inArgument_context, var_funcVariableMap_2854, inArgument_lib, var_outputString_3036, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 119)) ;
      result_result = callExtensionGetter_resultField ((const cPtr_gtlData *) var_funcVariableMap_2854.ptr (), object->mProperty_returnVariable, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 120)) ;
    }
  }
  if (kBoolFalse == test_1) {
    TC_Array <C_FixItDescription> fixItArray2 ;
    inCompiler->emitSemanticError (constinArgument_fromLocation, GALGAS_string ("function call failed"), fixItArray2  COMMA_SOURCE_FILE ("gtl_module.galgas", 122)) ;
    result_result.drop () ; // Release error dropped variable
  }
//---
  return result_result ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionGetter_gtlFunction_call (void) {
  enterExtensionGetter_call (kTypeDescriptor_GALGAS_gtlFunction.mSlotID,
                             extensionGetter_gtlFunction_call) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_gtlFunction_call (void) {
  gExtensionGetterTable_gtlFunction_call.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_gtlFunction_call (defineExtensionGetter_gtlFunction_call,
                                             freeExtensionGetter_gtlFunction_call) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlGetter::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlGetter * p = (const cPtr_gtlGetter *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlGetter) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_name.objectCompare (p->mProperty_name) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_formalArguments.objectCompare (p->mProperty_formalArguments) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_instructions.objectCompare (p->mProperty_instructions) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_returnVariable.objectCompare (p->mProperty_returnVariable) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_targetType.objectCompare (p->mProperty_targetType) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlGetter::objectCompare (const GALGAS_gtlGetter & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlGetter::GALGAS_gtlGetter (void) :
GALGAS_gtlFunction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlGetter::GALGAS_gtlGetter (const cPtr_gtlGetter * inSourcePtr) :
GALGAS_gtlFunction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlGetter) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlGetter GALGAS_gtlGetter::constructor_new (const GALGAS_location & inAttribute_where,
                                                    const GALGAS_lstring & inAttribute_name,
                                                    const GALGAS_gtlArgumentList & inAttribute_formalArguments,
                                                    const GALGAS_gtlInstructionList & inAttribute_instructions,
                                                    const GALGAS_lstring & inAttribute_returnVariable,
                                                    const GALGAS_type & inAttribute_targetType
                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlGetter result ;
  if (inAttribute_where.isValid () && inAttribute_name.isValid () && inAttribute_formalArguments.isValid () && inAttribute_instructions.isValid () && inAttribute_returnVariable.isValid () && inAttribute_targetType.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlGetter (inAttribute_where, inAttribute_name, inAttribute_formalArguments, inAttribute_instructions, inAttribute_returnVariable, inAttribute_targetType COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_type GALGAS_gtlGetter::getter_targetType (UNUSED_LOCATION_ARGS) const {
  GALGAS_type result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlGetter * p = (const cPtr_gtlGetter *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlGetter) ;
    result = p->mProperty_targetType ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_type cPtr_gtlGetter::getter_targetType (UNUSED_LOCATION_ARGS) const {
  return mProperty_targetType ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                         Pointer class for @gtlGetter class                                          *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlGetter::cPtr_gtlGetter (const GALGAS_location & in_where,
                                const GALGAS_lstring & in_name,
                                const GALGAS_gtlArgumentList & in_formalArguments,
                                const GALGAS_gtlInstructionList & in_instructions,
                                const GALGAS_lstring & in_returnVariable,
                                const GALGAS_type & in_targetType
                                COMMA_LOCATION_ARGS) :
cPtr_gtlFunction (in_where, in_name, in_formalArguments, in_instructions, in_returnVariable COMMA_THERE),
mProperty_targetType (in_targetType) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlGetter::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlGetter ;
}

void cPtr_gtlGetter::description (C_String & ioString,
                                  const int32_t inIndentation) const {
  ioString << "[@gtlGetter:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_name.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_formalArguments.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_instructions.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_returnVariable.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_targetType.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlGetter::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlGetter (mProperty_where, mProperty_name, mProperty_formalArguments, mProperty_instructions, mProperty_returnVariable, mProperty_targetType COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @gtlGetter type                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlGetter ("gtlGetter",
                                  & kTypeDescriptor_GALGAS_gtlFunction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlGetter::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlGetter ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlGetter::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlGetter (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlGetter GALGAS_gtlGetter::extractObject (const GALGAS_object & inObject,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlGetter result ;
  const GALGAS_gtlGetter * p = (const GALGAS_gtlGetter *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlGetter *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlGetter", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                      Extension getter '@gtlGetter callGetter'                                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_gtlGetter_callGetter> gExtensionGetterTable_gtlGetter_callGetter ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_callGetter (const int32_t inClassIndex,
                                      enterExtensionGetter_gtlGetter_callGetter inGetter) {
  gExtensionGetterTable_gtlGetter_callGetter.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlData callExtensionGetter_callGetter (const cPtr_gtlGetter * inObject,
                                               const GALGAS_location in_fromLocation,
                                               GALGAS_gtlContext in_context,
                                               GALGAS_library in_lib,
                                               const GALGAS_gtlData in_target,
                                               const GALGAS_gtlDataList in_actualArguments,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) {
  GALGAS_gtlData result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlGetter) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_gtlGetter_callGetter f = NULL ;
    if (classIndex < gExtensionGetterTable_gtlGetter_callGetter.count ()) {
      f = gExtensionGetterTable_gtlGetter_callGetter (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_gtlGetter_callGetter.count ()) {
           f = gExtensionGetterTable_gtlGetter_callGetter (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_gtlGetter_callGetter.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, in_fromLocation, in_context, in_lib, in_target, in_actualArguments, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static GALGAS_gtlData extensionGetter_gtlGetter_callGetter (const cPtr_gtlGetter * inObject,
                                                            const GALGAS_location constinArgument_fromLocation,
                                                            GALGAS_gtlContext inArgument_context,
                                                            GALGAS_library inArgument_lib,
                                                            const GALGAS_gtlData constinArgument_target,
                                                            const GALGAS_gtlDataList constinArgument_actualArguments,
                                                            C_Compiler * inCompiler
                                                            COMMA_UNUSED_LOCATION_ARGS) {
  GALGAS_gtlData result_result ; // Returned variable
  const cPtr_gtlGetter * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlGetter) ;
  GALGAS_gtlData var_getterVariableMap_3682 ;
  GALGAS_bool var_ok_3692 ;
  const GALGAS_gtlGetter temp_0 = object ;
  callExtensionMethod_checkArguments ((const cPtr_gtlGetter *) temp_0.ptr (), constinArgument_fromLocation, constinArgument_actualArguments, var_getterVariableMap_3682, var_ok_3692, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 140)) ;
  {
  var_getterVariableMap_3682.insulate (HERE) ;
  cPtr_gtlData * ptr_3716 = (cPtr_gtlData *) var_getterVariableMap_3682.ptr () ;
  callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_3716, object->mProperty_returnVariable, GALGAS_gtlUnconstructed::constructor_new (object->mProperty_returnVariable.getter_location (SOURCE_FILE ("gtl_module.galgas", 144)), function_emptylstring (inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 144))  COMMA_SOURCE_FILE ("gtl_module.galgas", 144)), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 142)) ;
  }
  enumGalgasBool test_1 = kBoolTrue ;
  if (kBoolTrue == test_1) {
    test_1 = var_ok_3692.boolEnum () ;
    if (kBoolTrue == test_1) {
      {
      var_getterVariableMap_3682.insulate (HERE) ;
      cPtr_gtlData * ptr_3866 = (cPtr_gtlData *) var_getterVariableMap_3682.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_3866, GALGAS_lstring::constructor_new (GALGAS_string ("self"), constinArgument_fromLocation  COMMA_SOURCE_FILE ("gtl_module.galgas", 148)), constinArgument_target, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 147)) ;
      }
      GALGAS_string var_outputString_3964 = GALGAS_string::makeEmptyString () ;
      extensionMethod_execute (object->mProperty_instructions, inArgument_context, var_getterVariableMap_3682, inArgument_lib, var_outputString_3964, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 152)) ;
      result_result = callExtensionGetter_resultField ((const cPtr_gtlData *) var_getterVariableMap_3682.ptr (), object->mProperty_returnVariable, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 153)) ;
    }
  }
  if (kBoolFalse == test_1) {
    TC_Array <C_FixItDescription> fixItArray2 ;
    inCompiler->emitSemanticError (constinArgument_fromLocation, GALGAS_string ("getter call failed"), fixItArray2  COMMA_SOURCE_FILE ("gtl_module.galgas", 155)) ;
    result_result.drop () ; // Release error dropped variable
  }
//---
  return result_result ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionGetter_gtlGetter_callGetter (void) {
  enterExtensionGetter_callGetter (kTypeDescriptor_GALGAS_gtlGetter.mSlotID,
                                   extensionGetter_gtlGetter_callGetter) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_gtlGetter_callGetter (void) {
  gExtensionGetterTable_gtlGetter_callGetter.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_gtlGetter_callGetter (defineExtensionGetter_gtlGetter_callGetter,
                                                 freeExtensionGetter_gtlGetter_callGetter) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                       Extension getter '@gtlGetter typedName'                                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_gtlGetter_typedName> gExtensionGetterTable_gtlGetter_typedName ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_typedName (const int32_t inClassIndex,
                                     enterExtensionGetter_gtlGetter_typedName inGetter) {
  gExtensionGetterTable_gtlGetter_typedName.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring callExtensionGetter_typedName (const cPtr_gtlGetter * inObject,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
  GALGAS_lstring result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlGetter) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_gtlGetter_typedName f = NULL ;
    if (classIndex < gExtensionGetterTable_gtlGetter_typedName.count ()) {
      f = gExtensionGetterTable_gtlGetter_typedName (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_gtlGetter_typedName.count ()) {
           f = gExtensionGetterTable_gtlGetter_typedName (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_gtlGetter_typedName.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static GALGAS_lstring extensionGetter_gtlGetter_typedName (const cPtr_gtlGetter * inObject,
                                                           C_Compiler * inCompiler
                                                           COMMA_UNUSED_LOCATION_ARGS) {
  GALGAS_lstring result_result ; // Returned variable
  const cPtr_gtlGetter * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlGetter) ;
  result_result = GALGAS_lstring::constructor_new (extensionGetter_typeName (object->mProperty_targetType, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 162)).add_operation (object->mProperty_name.getter_string (SOURCE_FILE ("gtl_module.galgas", 162)), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 162)), object->mProperty_where  COMMA_SOURCE_FILE ("gtl_module.galgas", 162)) ;
//---
  return result_result ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionGetter_gtlGetter_typedName (void) {
  enterExtensionGetter_typedName (kTypeDescriptor_GALGAS_gtlGetter.mSlotID,
                                  extensionGetter_gtlGetter_typedName) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_gtlGetter_typedName (void) {
  gExtensionGetterTable_gtlGetter_typedName.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_gtlGetter_typedName (defineExtensionGetter_gtlGetter_typedName,
                                                freeExtensionGetter_gtlGetter_typedName) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlSetter::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlSetter * p = (const cPtr_gtlSetter *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlSetter) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_name.objectCompare (p->mProperty_name) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_formalArguments.objectCompare (p->mProperty_formalArguments) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_instructions.objectCompare (p->mProperty_instructions) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_targetType.objectCompare (p->mProperty_targetType) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlSetter::objectCompare (const GALGAS_gtlSetter & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetter::GALGAS_gtlSetter (void) :
GALGAS_gtlExecutableEntity () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetter::GALGAS_gtlSetter (const cPtr_gtlSetter * inSourcePtr) :
GALGAS_gtlExecutableEntity (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlSetter) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetter GALGAS_gtlSetter::constructor_new (const GALGAS_location & inAttribute_where,
                                                    const GALGAS_lstring & inAttribute_name,
                                                    const GALGAS_gtlArgumentList & inAttribute_formalArguments,
                                                    const GALGAS_gtlInstructionList & inAttribute_instructions,
                                                    const GALGAS_type & inAttribute_targetType
                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlSetter result ;
  if (inAttribute_where.isValid () && inAttribute_name.isValid () && inAttribute_formalArguments.isValid () && inAttribute_instructions.isValid () && inAttribute_targetType.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlSetter (inAttribute_where, inAttribute_name, inAttribute_formalArguments, inAttribute_instructions, inAttribute_targetType COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_type GALGAS_gtlSetter::getter_targetType (UNUSED_LOCATION_ARGS) const {
  GALGAS_type result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlSetter * p = (const cPtr_gtlSetter *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlSetter) ;
    result = p->mProperty_targetType ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_type cPtr_gtlSetter::getter_targetType (UNUSED_LOCATION_ARGS) const {
  return mProperty_targetType ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                         Pointer class for @gtlSetter class                                          *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlSetter::cPtr_gtlSetter (const GALGAS_location & in_where,
                                const GALGAS_lstring & in_name,
                                const GALGAS_gtlArgumentList & in_formalArguments,
                                const GALGAS_gtlInstructionList & in_instructions,
                                const GALGAS_type & in_targetType
                                COMMA_LOCATION_ARGS) :
cPtr_gtlExecutableEntity (in_where, in_name, in_formalArguments, in_instructions COMMA_THERE),
mProperty_targetType (in_targetType) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlSetter::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlSetter ;
}

void cPtr_gtlSetter::description (C_String & ioString,
                                  const int32_t inIndentation) const {
  ioString << "[@gtlSetter:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_name.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_formalArguments.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_instructions.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_targetType.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlSetter::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlSetter (mProperty_where, mProperty_name, mProperty_formalArguments, mProperty_instructions, mProperty_targetType COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @gtlSetter type                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlSetter ("gtlSetter",
                                  & kTypeDescriptor_GALGAS_gtlExecutableEntity) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlSetter::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlSetter ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlSetter::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlSetter (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetter GALGAS_gtlSetter::extractObject (const GALGAS_object & inObject,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlSetter result ;
  const GALGAS_gtlSetter * p = (const GALGAS_gtlSetter *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlSetter *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlSetter", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                      Extension method '@gtlSetter callSetter'                                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_gtlSetter_callSetter> gExtensionMethodTable_gtlSetter_callSetter ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_callSetter (const int32_t inClassIndex,
                                      extensionMethodSignature_gtlSetter_callSetter inMethod) {
  gExtensionMethodTable_gtlSetter_callSetter.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_callSetter (const cPtr_gtlSetter * inObject,
                                     const GALGAS_location constin_fromLocation,
                                     GALGAS_gtlContext in_context,
                                     GALGAS_library in_lib,
                                     GALGAS_gtlData & io_target,
                                     const GALGAS_gtlDataList constin_actualArguments,
                                     C_Compiler * inCompiler
                                     COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlSetter) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_gtlSetter_callSetter f = NULL ;
    if (classIndex < gExtensionMethodTable_gtlSetter_callSetter.count ()) {
      f = gExtensionMethodTable_gtlSetter_callSetter (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_gtlSetter_callSetter.count ()) {
           f = gExtensionMethodTable_gtlSetter_callSetter (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_gtlSetter_callSetter.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, constin_fromLocation, in_context, in_lib, io_target, constin_actualArguments, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_gtlSetter_callSetter (const cPtr_gtlSetter * inObject,
                                                  const GALGAS_location constinArgument_fromLocation,
                                                  GALGAS_gtlContext inArgument_context,
                                                  GALGAS_library inArgument_lib,
                                                  GALGAS_gtlData & ioArgument_target,
                                                  const GALGAS_gtlDataList constinArgument_actualArguments,
                                                  C_Compiler * inCompiler
                                                  COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_gtlSetter * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlSetter) ;
  GALGAS_gtlData var_setterVariableMap_4709 ;
  GALGAS_bool var_ok_4719 ;
  const GALGAS_gtlSetter temp_0 = object ;
  callExtensionMethod_checkArguments ((const cPtr_gtlSetter *) temp_0.ptr (), constinArgument_fromLocation, constinArgument_actualArguments, var_setterVariableMap_4709, var_ok_4719, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 178)) ;
  enumGalgasBool test_1 = kBoolTrue ;
  if (kBoolTrue == test_1) {
    test_1 = var_ok_4719.boolEnum () ;
    if (kBoolTrue == test_1) {
      GALGAS_lstring var_selfName_4759 = GALGAS_lstring::constructor_new (GALGAS_string ("self"), constinArgument_fromLocation  COMMA_SOURCE_FILE ("gtl_module.galgas", 181)) ;
      {
      var_setterVariableMap_4709.insulate (HERE) ;
      cPtr_gtlData * ptr_4817 = (cPtr_gtlData *) var_setterVariableMap_4709.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_4817, var_selfName_4759, ioArgument_target, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 182)) ;
      }
      GALGAS_string var_outputString_4893 = GALGAS_string::makeEmptyString () ;
      extensionMethod_execute (object->mProperty_instructions, inArgument_context, var_setterVariableMap_4709, inArgument_lib, var_outputString_4893, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 187)) ;
      GALGAS_bool joker_5031 ; // Joker input parameter
      callExtensionMethod_structField ((const cPtr_gtlData *) var_setterVariableMap_4709.ptr (), var_selfName_4759, ioArgument_target, joker_5031, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 188)) ;
    }
  }
  if (kBoolFalse == test_1) {
    TC_Array <C_FixItDescription> fixItArray2 ;
    inCompiler->emitSemanticError (constinArgument_fromLocation, GALGAS_string ("setter call failed"), fixItArray2  COMMA_SOURCE_FILE ("gtl_module.galgas", 190)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_gtlSetter_callSetter (void) {
  enterExtensionMethod_callSetter (kTypeDescriptor_GALGAS_gtlSetter.mSlotID,
                                   extensionMethod_gtlSetter_callSetter) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_gtlSetter_callSetter (void) {
  gExtensionMethodTable_gtlSetter_callSetter.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_gtlSetter_callSetter (defineExtensionMethod_gtlSetter_callSetter,
                                                 freeExtensionMethod_gtlSetter_callSetter) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                       Extension getter '@gtlSetter typedName'                                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_gtlSetter_typedName> gExtensionGetterTable_gtlSetter_typedName ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_typedName (const int32_t inClassIndex,
                                     enterExtensionGetter_gtlSetter_typedName inGetter) {
  gExtensionGetterTable_gtlSetter_typedName.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring callExtensionGetter_typedName (const cPtr_gtlSetter * inObject,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
  GALGAS_lstring result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlSetter) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_gtlSetter_typedName f = NULL ;
    if (classIndex < gExtensionGetterTable_gtlSetter_typedName.count ()) {
      f = gExtensionGetterTable_gtlSetter_typedName (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_gtlSetter_typedName.count ()) {
           f = gExtensionGetterTable_gtlSetter_typedName (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_gtlSetter_typedName.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static GALGAS_lstring extensionGetter_gtlSetter_typedName (const cPtr_gtlSetter * inObject,
                                                           C_Compiler * inCompiler
                                                           COMMA_UNUSED_LOCATION_ARGS) {
  GALGAS_lstring result_result ; // Returned variable
  const cPtr_gtlSetter * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlSetter) ;
  result_result = GALGAS_lstring::constructor_new (extensionGetter_typeName (object->mProperty_targetType, inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 197)).add_operation (object->mProperty_name.getter_string (SOURCE_FILE ("gtl_module.galgas", 197)), inCompiler COMMA_SOURCE_FILE ("gtl_module.galgas", 197)), object->mProperty_where  COMMA_SOURCE_FILE ("gtl_module.galgas", 197)) ;
//---
  return result_result ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionGetter_gtlSetter_typedName (void) {
  enterExtensionGetter_typedName (kTypeDescriptor_GALGAS_gtlSetter.mSlotID,
                                  extensionGetter_gtlSetter_typedName) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_gtlSetter_typedName (void) {
  gExtensionGetterTable_gtlSetter_typedName.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_gtlSetter_typedName (defineExtensionGetter_gtlSetter_typedName,
                                                freeExtensionGetter_gtlSetter_typedName) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlModule::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlModule * p = (const cPtr_gtlModule *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlModule) ;
  if (kOperandEqual == result) {
    result = mProperty_name.objectCompare (p->mProperty_name) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_procedures.objectCompare (p->mProperty_procedures) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_functions.objectCompare (p->mProperty_functions) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlModule::objectCompare (const GALGAS_gtlModule & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlModule::GALGAS_gtlModule (void) :
AC_GALGAS_class (false) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlModule GALGAS_gtlModule::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlModule::constructor_new (GALGAS_lstring::constructor_default (HERE),
                                            GALGAS_gtlProcMap::constructor_emptyMap (HERE),
                                            GALGAS_gtlFuncMap::constructor_emptyMap (HERE)
                                            COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlModule::GALGAS_gtlModule (const cPtr_gtlModule * inSourcePtr) :
AC_GALGAS_class (inSourcePtr, false) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlModule) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlModule GALGAS_gtlModule::constructor_new (const GALGAS_lstring & inAttribute_name,
                                                    const GALGAS_gtlProcMap & inAttribute_procedures,
                                                    const GALGAS_gtlFuncMap & inAttribute_functions
                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlModule result ;
  if (inAttribute_name.isValid () && inAttribute_procedures.isValid () && inAttribute_functions.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlModule (inAttribute_name, inAttribute_procedures, inAttribute_functions COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlModule::getter_name (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlModule * p = (const cPtr_gtlModule *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlModule) ;
    result = p->mProperty_name ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlModule::getter_name (UNUSED_LOCATION_ARGS) const {
  return mProperty_name ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlProcMap GALGAS_gtlModule::getter_procedures (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlProcMap result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlModule * p = (const cPtr_gtlModule *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlModule) ;
    result = p->mProperty_procedures ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlProcMap cPtr_gtlModule::getter_procedures (UNUSED_LOCATION_ARGS) const {
  return mProperty_procedures ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFuncMap GALGAS_gtlModule::getter_functions (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlFuncMap result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlModule * p = (const cPtr_gtlModule *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlModule) ;
    result = p->mProperty_functions ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlFuncMap cPtr_gtlModule::getter_functions (UNUSED_LOCATION_ARGS) const {
  return mProperty_functions ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                         Pointer class for @gtlModule class                                          *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlModule::cPtr_gtlModule (const GALGAS_lstring & in_name,
                                const GALGAS_gtlProcMap & in_procedures,
                                const GALGAS_gtlFuncMap & in_functions
                                COMMA_LOCATION_ARGS) :
acPtr_class (THERE),
mProperty_name (in_name),
mProperty_procedures (in_procedures),
mProperty_functions (in_functions) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlModule::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlModule ;
}

void cPtr_gtlModule::description (C_String & ioString,
                                  const int32_t inIndentation) const {
  ioString << "[@gtlModule:" ;
  mProperty_name.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_procedures.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_functions.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlModule::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlModule (mProperty_name, mProperty_procedures, mProperty_functions COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @gtlModule type                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlModule ("gtlModule",
                                  NULL) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlModule::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlModule ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlModule::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlModule (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlModule GALGAS_gtlModule::extractObject (const GALGAS_object & inObject,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlModule result ;
  const GALGAS_gtlModule * p = (const GALGAS_gtlModule *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlModule *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlModule", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*



typeComparisonResult GALGAS_gtlAssignInstruction::objectCompare (const GALGAS_gtlAssignInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlAssignInstruction::GALGAS_gtlAssignInstruction (void) :
GALGAS_gtlLetUnconstructedInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlAssignInstruction::GALGAS_gtlAssignInstruction (const cPtr_gtlAssignInstruction * inSourcePtr) :
GALGAS_gtlLetUnconstructedInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlAssignInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlAssignInstruction::getter_rValue (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlAssignInstruction * p = (const cPtr_gtlAssignInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlAssignInstruction) ;
    result = p->mProperty_rValue ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlAssignInstruction::getter_rValue (UNUSED_LOCATION_ARGS) const {
  return mProperty_rValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                    Pointer class for @gtlAssignInstruction class                                    *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlAssignInstruction::cPtr_gtlAssignInstruction (const GALGAS_location & in_where,
                                                      const GALGAS_string & in_signature,
                                                      const GALGAS_gtlVarPath & in_lValue,
                                                      const GALGAS_gtlExpression & in_rValue
                                                      COMMA_LOCATION_ARGS) :
cPtr_gtlLetUnconstructedInstruction (in_where, in_signature, in_lValue COMMA_THERE),
mProperty_rValue (in_rValue) {
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlAssignInstruction type                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlAssignInstruction ("gtlAssignInstruction",
                                             & kTypeDescriptor_GALGAS_gtlLetUnconstructedInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlAssignInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlAssignInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlAssignInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlAssignInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlAssignInstruction GALGAS_gtlAssignInstruction::extractObject (const GALGAS_object & inObject,
                                                                        C_Compiler * inCompiler
                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlAssignInstruction result ;
  const GALGAS_gtlAssignInstruction * p = (const GALGAS_gtlAssignInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlAssignInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlAssignInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetInstruction * p = (const cPtr_gtlLetInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetInstruction::objectCompare (const GALGAS_gtlLetInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetInstruction::GALGAS_gtlLetInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetInstruction::GALGAS_gtlLetInstruction (const cPtr_gtlLetInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetInstruction GALGAS_gtlLetInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                    const GALGAS_string & inAttribute_signature,
                                                                    const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                    const GALGAS_gtlExpression & inAttribute_rValue
                                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                     Pointer class for @gtlLetInstruction class                                      *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetInstruction::cPtr_gtlLetInstruction (const GALGAS_location & in_where,
                                                const GALGAS_string & in_signature,
                                                const GALGAS_gtlVarPath & in_lValue,
                                                const GALGAS_gtlExpression & in_rValue
                                                COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetInstruction ;
}

void cPtr_gtlLetInstruction::description (C_String & ioString,
                                          const int32_t inIndentation) const {
  ioString << "[@gtlLetInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                               @gtlLetInstruction type                                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetInstruction ("gtlLetInstruction",
                                          & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetInstruction GALGAS_gtlLetInstruction::extractObject (const GALGAS_object & inObject,
                                                                  C_Compiler * inCompiler
                                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetInstruction result ;
  const GALGAS_gtlLetInstruction * p = (const GALGAS_gtlLetInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetAddInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetAddInstruction * p = (const cPtr_gtlLetAddInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetAddInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetAddInstruction::objectCompare (const GALGAS_gtlLetAddInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetAddInstruction::GALGAS_gtlLetAddInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetAddInstruction::GALGAS_gtlLetAddInstruction (const cPtr_gtlLetAddInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetAddInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetAddInstruction GALGAS_gtlLetAddInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                          const GALGAS_string & inAttribute_signature,
                                                                          const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                          const GALGAS_gtlExpression & inAttribute_rValue
                                                                          COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetAddInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetAddInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                    Pointer class for @gtlLetAddInstruction class                                    *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetAddInstruction::cPtr_gtlLetAddInstruction (const GALGAS_location & in_where,
                                                      const GALGAS_string & in_signature,
                                                      const GALGAS_gtlVarPath & in_lValue,
                                                      const GALGAS_gtlExpression & in_rValue
                                                      COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetAddInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetAddInstruction ;
}

void cPtr_gtlLetAddInstruction::description (C_String & ioString,
                                             const int32_t inIndentation) const {
  ioString << "[@gtlLetAddInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetAddInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetAddInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlLetAddInstruction type                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetAddInstruction ("gtlLetAddInstruction",
                                             & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetAddInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetAddInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetAddInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetAddInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetAddInstruction GALGAS_gtlLetAddInstruction::extractObject (const GALGAS_object & inObject,
                                                                        C_Compiler * inCompiler
                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetAddInstruction result ;
  const GALGAS_gtlLetAddInstruction * p = (const GALGAS_gtlLetAddInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetAddInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetAddInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetSubstractInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetSubstractInstruction * p = (const cPtr_gtlLetSubstractInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetSubstractInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetSubstractInstruction::objectCompare (const GALGAS_gtlLetSubstractInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetSubstractInstruction::GALGAS_gtlLetSubstractInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetSubstractInstruction::GALGAS_gtlLetSubstractInstruction (const cPtr_gtlLetSubstractInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetSubstractInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetSubstractInstruction GALGAS_gtlLetSubstractInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                      const GALGAS_string & inAttribute_signature,
                                                                                      const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                                      const GALGAS_gtlExpression & inAttribute_rValue
                                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetSubstractInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetSubstractInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                 Pointer class for @gtlLetSubstractInstruction class                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetSubstractInstruction::cPtr_gtlLetSubstractInstruction (const GALGAS_location & in_where,
                                                                  const GALGAS_string & in_signature,
                                                                  const GALGAS_gtlVarPath & in_lValue,
                                                                  const GALGAS_gtlExpression & in_rValue
                                                                  COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetSubstractInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetSubstractInstruction ;
}

void cPtr_gtlLetSubstractInstruction::description (C_String & ioString,
                                                   const int32_t inIndentation) const {
  ioString << "[@gtlLetSubstractInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetSubstractInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetSubstractInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlLetSubstractInstruction type                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetSubstractInstruction ("gtlLetSubstractInstruction",
                                                   & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetSubstractInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetSubstractInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetSubstractInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetSubstractInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetSubstractInstruction GALGAS_gtlLetSubstractInstruction::extractObject (const GALGAS_object & inObject,
                                                                                    C_Compiler * inCompiler
                                                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetSubstractInstruction result ;
  const GALGAS_gtlLetSubstractInstruction * p = (const GALGAS_gtlLetSubstractInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetSubstractInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetSubstractInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetMultiplyInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetMultiplyInstruction * p = (const cPtr_gtlLetMultiplyInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetMultiplyInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetMultiplyInstruction::objectCompare (const GALGAS_gtlLetMultiplyInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetMultiplyInstruction::GALGAS_gtlLetMultiplyInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetMultiplyInstruction::GALGAS_gtlLetMultiplyInstruction (const cPtr_gtlLetMultiplyInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetMultiplyInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetMultiplyInstruction GALGAS_gtlLetMultiplyInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                    const GALGAS_string & inAttribute_signature,
                                                                                    const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                                    const GALGAS_gtlExpression & inAttribute_rValue
                                                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetMultiplyInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetMultiplyInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                 Pointer class for @gtlLetMultiplyInstruction class                                  *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetMultiplyInstruction::cPtr_gtlLetMultiplyInstruction (const GALGAS_location & in_where,
                                                                const GALGAS_string & in_signature,
                                                                const GALGAS_gtlVarPath & in_lValue,
                                                                const GALGAS_gtlExpression & in_rValue
                                                                COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetMultiplyInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetMultiplyInstruction ;
}

void cPtr_gtlLetMultiplyInstruction::description (C_String & ioString,
                                                  const int32_t inIndentation) const {
  ioString << "[@gtlLetMultiplyInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetMultiplyInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetMultiplyInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @gtlLetMultiplyInstruction type                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetMultiplyInstruction ("gtlLetMultiplyInstruction",
                                                  & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetMultiplyInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetMultiplyInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetMultiplyInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetMultiplyInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetMultiplyInstruction GALGAS_gtlLetMultiplyInstruction::extractObject (const GALGAS_object & inObject,
                                                                                  C_Compiler * inCompiler
                                                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetMultiplyInstruction result ;
  const GALGAS_gtlLetMultiplyInstruction * p = (const GALGAS_gtlLetMultiplyInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetMultiplyInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetMultiplyInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetDivideInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetDivideInstruction * p = (const cPtr_gtlLetDivideInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetDivideInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetDivideInstruction::objectCompare (const GALGAS_gtlLetDivideInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetDivideInstruction::GALGAS_gtlLetDivideInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetDivideInstruction::GALGAS_gtlLetDivideInstruction (const cPtr_gtlLetDivideInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetDivideInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetDivideInstruction GALGAS_gtlLetDivideInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                const GALGAS_string & inAttribute_signature,
                                                                                const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                                const GALGAS_gtlExpression & inAttribute_rValue
                                                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetDivideInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetDivideInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                  Pointer class for @gtlLetDivideInstruction class                                   *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetDivideInstruction::cPtr_gtlLetDivideInstruction (const GALGAS_location & in_where,
                                                            const GALGAS_string & in_signature,
                                                            const GALGAS_gtlVarPath & in_lValue,
                                                            const GALGAS_gtlExpression & in_rValue
                                                            COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetDivideInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetDivideInstruction ;
}

void cPtr_gtlLetDivideInstruction::description (C_String & ioString,
                                                const int32_t inIndentation) const {
  ioString << "[@gtlLetDivideInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetDivideInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetDivideInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                            @gtlLetDivideInstruction type                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetDivideInstruction ("gtlLetDivideInstruction",
                                                & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetDivideInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetDivideInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetDivideInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetDivideInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetDivideInstruction GALGAS_gtlLetDivideInstruction::extractObject (const GALGAS_object & inObject,
                                                                              C_Compiler * inCompiler
                                                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetDivideInstruction result ;
  const GALGAS_gtlLetDivideInstruction * p = (const GALGAS_gtlLetDivideInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetDivideInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetDivideInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetModuloInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetModuloInstruction * p = (const cPtr_gtlLetModuloInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetModuloInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetModuloInstruction::objectCompare (const GALGAS_gtlLetModuloInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetModuloInstruction::GALGAS_gtlLetModuloInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetModuloInstruction::GALGAS_gtlLetModuloInstruction (const cPtr_gtlLetModuloInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetModuloInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetModuloInstruction GALGAS_gtlLetModuloInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                const GALGAS_string & inAttribute_signature,
                                                                                const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                                const GALGAS_gtlExpression & inAttribute_rValue
                                                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetModuloInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetModuloInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                  Pointer class for @gtlLetModuloInstruction class                                   *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetModuloInstruction::cPtr_gtlLetModuloInstruction (const GALGAS_location & in_where,
                                                            const GALGAS_string & in_signature,
                                                            const GALGAS_gtlVarPath & in_lValue,
                                                            const GALGAS_gtlExpression & in_rValue
                                                            COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetModuloInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetModuloInstruction ;
}

void cPtr_gtlLetModuloInstruction::description (C_String & ioString,
                                                const int32_t inIndentation) const {
  ioString << "[@gtlLetModuloInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetModuloInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetModuloInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                            @gtlLetModuloInstruction type                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetModuloInstruction ("gtlLetModuloInstruction",
                                                & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetModuloInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetModuloInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetModuloInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetModuloInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetModuloInstruction GALGAS_gtlLetModuloInstruction::extractObject (const GALGAS_object & inObject,
                                                                              C_Compiler * inCompiler
                                                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetModuloInstruction result ;
  const GALGAS_gtlLetModuloInstruction * p = (const GALGAS_gtlLetModuloInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetModuloInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetModuloInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetShiftLeftInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetShiftLeftInstruction * p = (const cPtr_gtlLetShiftLeftInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetShiftLeftInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetShiftLeftInstruction::objectCompare (const GALGAS_gtlLetShiftLeftInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetShiftLeftInstruction::GALGAS_gtlLetShiftLeftInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetShiftLeftInstruction::GALGAS_gtlLetShiftLeftInstruction (const cPtr_gtlLetShiftLeftInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetShiftLeftInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetShiftLeftInstruction GALGAS_gtlLetShiftLeftInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                      const GALGAS_string & inAttribute_signature,
                                                                                      const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                                      const GALGAS_gtlExpression & inAttribute_rValue
                                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetShiftLeftInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetShiftLeftInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                 Pointer class for @gtlLetShiftLeftInstruction class                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetShiftLeftInstruction::cPtr_gtlLetShiftLeftInstruction (const GALGAS_location & in_where,
                                                                  const GALGAS_string & in_signature,
                                                                  const GALGAS_gtlVarPath & in_lValue,
                                                                  const GALGAS_gtlExpression & in_rValue
                                                                  COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetShiftLeftInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetShiftLeftInstruction ;
}

void cPtr_gtlLetShiftLeftInstruction::description (C_String & ioString,
                                                   const int32_t inIndentation) const {
  ioString << "[@gtlLetShiftLeftInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetShiftLeftInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetShiftLeftInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlLetShiftLeftInstruction type                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetShiftLeftInstruction ("gtlLetShiftLeftInstruction",
                                                   & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetShiftLeftInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetShiftLeftInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetShiftLeftInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetShiftLeftInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetShiftLeftInstruction GALGAS_gtlLetShiftLeftInstruction::extractObject (const GALGAS_object & inObject,
                                                                                    C_Compiler * inCompiler
                                                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetShiftLeftInstruction result ;
  const GALGAS_gtlLetShiftLeftInstruction * p = (const GALGAS_gtlLetShiftLeftInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetShiftLeftInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetShiftLeftInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetShiftRightInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetShiftRightInstruction * p = (const cPtr_gtlLetShiftRightInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetShiftRightInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetShiftRightInstruction::objectCompare (const GALGAS_gtlLetShiftRightInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetShiftRightInstruction::GALGAS_gtlLetShiftRightInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetShiftRightInstruction::GALGAS_gtlLetShiftRightInstruction (const cPtr_gtlLetShiftRightInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetShiftRightInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetShiftRightInstruction GALGAS_gtlLetShiftRightInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                        const GALGAS_string & inAttribute_signature,
                                                                                        const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                                        const GALGAS_gtlExpression & inAttribute_rValue
                                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetShiftRightInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetShiftRightInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                Pointer class for @gtlLetShiftRightInstruction class                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetShiftRightInstruction::cPtr_gtlLetShiftRightInstruction (const GALGAS_location & in_where,
                                                                    const GALGAS_string & in_signature,
                                                                    const GALGAS_gtlVarPath & in_lValue,
                                                                    const GALGAS_gtlExpression & in_rValue
                                                                    COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetShiftRightInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetShiftRightInstruction ;
}

void cPtr_gtlLetShiftRightInstruction::description (C_String & ioString,
                                                    const int32_t inIndentation) const {
  ioString << "[@gtlLetShiftRightInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetShiftRightInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetShiftRightInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlLetShiftRightInstruction type                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetShiftRightInstruction ("gtlLetShiftRightInstruction",
                                                    & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetShiftRightInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetShiftRightInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetShiftRightInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetShiftRightInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetShiftRightInstruction GALGAS_gtlLetShiftRightInstruction::extractObject (const GALGAS_object & inObject,
                                                                                      C_Compiler * inCompiler
                                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetShiftRightInstruction result ;
  const GALGAS_gtlLetShiftRightInstruction * p = (const GALGAS_gtlLetShiftRightInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetShiftRightInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetShiftRightInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetAndInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetAndInstruction * p = (const cPtr_gtlLetAndInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetAndInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetAndInstruction::objectCompare (const GALGAS_gtlLetAndInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetAndInstruction::GALGAS_gtlLetAndInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetAndInstruction::GALGAS_gtlLetAndInstruction (const cPtr_gtlLetAndInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetAndInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetAndInstruction GALGAS_gtlLetAndInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                          const GALGAS_string & inAttribute_signature,
                                                                          const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                          const GALGAS_gtlExpression & inAttribute_rValue
                                                                          COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetAndInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetAndInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                    Pointer class for @gtlLetAndInstruction class                                    *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetAndInstruction::cPtr_gtlLetAndInstruction (const GALGAS_location & in_where,
                                                      const GALGAS_string & in_signature,
                                                      const GALGAS_gtlVarPath & in_lValue,
                                                      const GALGAS_gtlExpression & in_rValue
                                                      COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetAndInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetAndInstruction ;
}

void cPtr_gtlLetAndInstruction::description (C_String & ioString,
                                             const int32_t inIndentation) const {
  ioString << "[@gtlLetAndInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetAndInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetAndInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlLetAndInstruction type                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetAndInstruction ("gtlLetAndInstruction",
                                             & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetAndInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetAndInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetAndInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetAndInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetAndInstruction GALGAS_gtlLetAndInstruction::extractObject (const GALGAS_object & inObject,
                                                                        C_Compiler * inCompiler
                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetAndInstruction result ;
  const GALGAS_gtlLetAndInstruction * p = (const GALGAS_gtlLetAndInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetAndInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetAndInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetOrInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetOrInstruction * p = (const cPtr_gtlLetOrInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetOrInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetOrInstruction::objectCompare (const GALGAS_gtlLetOrInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetOrInstruction::GALGAS_gtlLetOrInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetOrInstruction::GALGAS_gtlLetOrInstruction (const cPtr_gtlLetOrInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetOrInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetOrInstruction GALGAS_gtlLetOrInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                        const GALGAS_string & inAttribute_signature,
                                                                        const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                        const GALGAS_gtlExpression & inAttribute_rValue
                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetOrInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetOrInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                    Pointer class for @gtlLetOrInstruction class                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetOrInstruction::cPtr_gtlLetOrInstruction (const GALGAS_location & in_where,
                                                    const GALGAS_string & in_signature,
                                                    const GALGAS_gtlVarPath & in_lValue,
                                                    const GALGAS_gtlExpression & in_rValue
                                                    COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetOrInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetOrInstruction ;
}

void cPtr_gtlLetOrInstruction::description (C_String & ioString,
                                            const int32_t inIndentation) const {
  ioString << "[@gtlLetOrInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetOrInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetOrInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                              @gtlLetOrInstruction type                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetOrInstruction ("gtlLetOrInstruction",
                                            & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetOrInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetOrInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetOrInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetOrInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetOrInstruction GALGAS_gtlLetOrInstruction::extractObject (const GALGAS_object & inObject,
                                                                      C_Compiler * inCompiler
                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetOrInstruction result ;
  const GALGAS_gtlLetOrInstruction * p = (const GALGAS_gtlLetOrInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetOrInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetOrInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLetXorInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLetXorInstruction * p = (const cPtr_gtlLetXorInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLetXorInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_lValue.objectCompare (p->mProperty_lValue) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLetXorInstruction::objectCompare (const GALGAS_gtlLetXorInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetXorInstruction::GALGAS_gtlLetXorInstruction (void) :
GALGAS_gtlAssignInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetXorInstruction::GALGAS_gtlLetXorInstruction (const cPtr_gtlLetXorInstruction * inSourcePtr) :
GALGAS_gtlAssignInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLetXorInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetXorInstruction GALGAS_gtlLetXorInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                          const GALGAS_string & inAttribute_signature,
                                                                          const GALGAS_gtlVarPath & inAttribute_lValue,
                                                                          const GALGAS_gtlExpression & inAttribute_rValue
                                                                          COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetXorInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_lValue.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLetXorInstruction (inAttribute_where, inAttribute_signature, inAttribute_lValue, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                    Pointer class for @gtlLetXorInstruction class                                    *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLetXorInstruction::cPtr_gtlLetXorInstruction (const GALGAS_location & in_where,
                                                      const GALGAS_string & in_signature,
                                                      const GALGAS_gtlVarPath & in_lValue,
                                                      const GALGAS_gtlExpression & in_rValue
                                                      COMMA_LOCATION_ARGS) :
cPtr_gtlAssignInstruction (in_where, in_signature, in_lValue, in_rValue COMMA_THERE) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLetXorInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetXorInstruction ;
}

void cPtr_gtlLetXorInstruction::description (C_String & ioString,
                                             const int32_t inIndentation) const {
  ioString << "[@gtlLetXorInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_lValue.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLetXorInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLetXorInstruction (mProperty_where, mProperty_signature, mProperty_lValue, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlLetXorInstruction type                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLetXorInstruction ("gtlLetXorInstruction",
                                             & kTypeDescriptor_GALGAS_gtlAssignInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLetXorInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLetXorInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLetXorInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLetXorInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLetXorInstruction GALGAS_gtlLetXorInstruction::extractObject (const GALGAS_object & inObject,
                                                                        C_Compiler * inCompiler
                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlLetXorInstruction result ;
  const GALGAS_gtlLetXorInstruction * p = (const GALGAS_gtlLetXorInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLetXorInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLetXorInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlEmitInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlEmitInstruction * p = (const cPtr_gtlEmitInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlEmitInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_rValue.objectCompare (p->mProperty_rValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlEmitInstruction::objectCompare (const GALGAS_gtlEmitInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEmitInstruction::GALGAS_gtlEmitInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEmitInstruction::GALGAS_gtlEmitInstruction (const cPtr_gtlEmitInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlEmitInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEmitInstruction GALGAS_gtlEmitInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                      const GALGAS_string & inAttribute_signature,
                                                                      const GALGAS_gtlExpression & inAttribute_rValue
                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlEmitInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_rValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlEmitInstruction (inAttribute_where, inAttribute_signature, inAttribute_rValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlEmitInstruction::getter_rValue (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlEmitInstruction * p = (const cPtr_gtlEmitInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlEmitInstruction) ;
    result = p->mProperty_rValue ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlEmitInstruction::getter_rValue (UNUSED_LOCATION_ARGS) const {
  return mProperty_rValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                     Pointer class for @gtlEmitInstruction class                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlEmitInstruction::cPtr_gtlEmitInstruction (const GALGAS_location & in_where,
                                                  const GALGAS_string & in_signature,
                                                  const GALGAS_gtlExpression & in_rValue
                                                  COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_rValue (in_rValue) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlEmitInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlEmitInstruction ;
}

void cPtr_gtlEmitInstruction::description (C_String & ioString,
                                           const int32_t inIndentation) const {
  ioString << "[@gtlEmitInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_rValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlEmitInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlEmitInstruction (mProperty_where, mProperty_signature, mProperty_rValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                              @gtlEmitInstruction type                                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlEmitInstruction ("gtlEmitInstruction",
                                           & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlEmitInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlEmitInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlEmitInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlEmitInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlEmitInstruction GALGAS_gtlEmitInstruction::extractObject (const GALGAS_object & inObject,
                                                                    C_Compiler * inCompiler
                                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlEmitInstruction result ;
  const GALGAS_gtlEmitInstruction * p = (const GALGAS_gtlEmitInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlEmitInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlEmitInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlWriteToInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlWriteToInstruction * p = (const cPtr_gtlWriteToInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlWriteToInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_fileNameExpression.objectCompare (p->mProperty_fileNameExpression) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_isExecutable.objectCompare (p->mProperty_isExecutable) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_instructions.objectCompare (p->mProperty_instructions) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlWriteToInstruction::objectCompare (const GALGAS_gtlWriteToInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWriteToInstruction::GALGAS_gtlWriteToInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWriteToInstruction::GALGAS_gtlWriteToInstruction (const cPtr_gtlWriteToInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlWriteToInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWriteToInstruction GALGAS_gtlWriteToInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                            const GALGAS_string & inAttribute_signature,
                                                                            const GALGAS_gtlExpression & inAttribute_fileNameExpression,
                                                                            const GALGAS_bool & inAttribute_isExecutable,
                                                                            const GALGAS_gtlInstructionList & inAttribute_instructions
                                                                            COMMA_LOCATION_ARGS) {
  GALGAS_gtlWriteToInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_fileNameExpression.isValid () && inAttribute_isExecutable.isValid () && inAttribute_instructions.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlWriteToInstruction (inAttribute_where, inAttribute_signature, inAttribute_fileNameExpression, inAttribute_isExecutable, inAttribute_instructions COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlWriteToInstruction::getter_fileNameExpression (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlWriteToInstruction * p = (const cPtr_gtlWriteToInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlWriteToInstruction) ;
    result = p->mProperty_fileNameExpression ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlWriteToInstruction::getter_fileNameExpression (UNUSED_LOCATION_ARGS) const {
  return mProperty_fileNameExpression ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool GALGAS_gtlWriteToInstruction::getter_isExecutable (UNUSED_LOCATION_ARGS) const {
  GALGAS_bool result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlWriteToInstruction * p = (const cPtr_gtlWriteToInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlWriteToInstruction) ;
    result = p->mProperty_isExecutable ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool cPtr_gtlWriteToInstruction::getter_isExecutable (UNUSED_LOCATION_ARGS) const {
  return mProperty_isExecutable ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlWriteToInstruction::getter_instructions (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlWriteToInstruction * p = (const cPtr_gtlWriteToInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlWriteToInstruction) ;
    result = p->mProperty_instructions ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlWriteToInstruction::getter_instructions (UNUSED_LOCATION_ARGS) const {
  return mProperty_instructions ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                   Pointer class for @gtlWriteToInstruction class                                    *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlWriteToInstruction::cPtr_gtlWriteToInstruction (const GALGAS_location & in_where,
                                                        const GALGAS_string & in_signature,
                                                        const GALGAS_gtlExpression & in_fileNameExpression,
                                                        const GALGAS_bool & in_isExecutable,
                                                        const GALGAS_gtlInstructionList & in_instructions
                                                        COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_fileNameExpression (in_fileNameExpression),
mProperty_isExecutable (in_isExecutable),
mProperty_instructions (in_instructions) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlWriteToInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlWriteToInstruction ;
}

void cPtr_gtlWriteToInstruction::description (C_String & ioString,
                                              const int32_t inIndentation) const {
  ioString << "[@gtlWriteToInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_fileNameExpression.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_isExecutable.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_instructions.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlWriteToInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlWriteToInstruction (mProperty_where, mProperty_signature, mProperty_fileNameExpression, mProperty_isExecutable, mProperty_instructions COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlWriteToInstruction type                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlWriteToInstruction ("gtlWriteToInstruction",
                                              & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlWriteToInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlWriteToInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlWriteToInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlWriteToInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWriteToInstruction GALGAS_gtlWriteToInstruction::extractObject (const GALGAS_object & inObject,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) {
  GALGAS_gtlWriteToInstruction result ;
  const GALGAS_gtlWriteToInstruction * p = (const GALGAS_gtlWriteToInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlWriteToInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlWriteToInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlTemplateInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlTemplateInstruction * p = (const cPtr_gtlTemplateInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlTemplateInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_prefix.objectCompare (p->mProperty_prefix) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_fileName.objectCompare (p->mProperty_fileName) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_ifExists.objectCompare (p->mProperty_ifExists) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_isGlobal.objectCompare (p->mProperty_isGlobal) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_arguments.objectCompare (p->mProperty_arguments) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_instructionsIfNotFound.objectCompare (p->mProperty_instructionsIfNotFound) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlTemplateInstruction::objectCompare (const GALGAS_gtlTemplateInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlTemplateInstruction::GALGAS_gtlTemplateInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlTemplateInstruction::GALGAS_gtlTemplateInstruction (const cPtr_gtlTemplateInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlTemplateInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlTemplateInstruction GALGAS_gtlTemplateInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                              const GALGAS_string & inAttribute_signature,
                                                                              const GALGAS_lstring & inAttribute_prefix,
                                                                              const GALGAS_gtlExpression & inAttribute_fileName,
                                                                              const GALGAS_bool & inAttribute_ifExists,
                                                                              const GALGAS_bool & inAttribute_isGlobal,
                                                                              const GALGAS_gtlExpressionList & inAttribute_arguments,
                                                                              const GALGAS_gtlInstructionList & inAttribute_instructionsIfNotFound
                                                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlTemplateInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_prefix.isValid () && inAttribute_fileName.isValid () && inAttribute_ifExists.isValid () && inAttribute_isGlobal.isValid () && inAttribute_arguments.isValid () && inAttribute_instructionsIfNotFound.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlTemplateInstruction (inAttribute_where, inAttribute_signature, inAttribute_prefix, inAttribute_fileName, inAttribute_ifExists, inAttribute_isGlobal, inAttribute_arguments, inAttribute_instructionsIfNotFound COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlTemplateInstruction::getter_prefix (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlTemplateInstruction * p = (const cPtr_gtlTemplateInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlTemplateInstruction) ;
    result = p->mProperty_prefix ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlTemplateInstruction::getter_prefix (UNUSED_LOCATION_ARGS) const {
  return mProperty_prefix ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlTemplateInstruction::getter_fileName (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlTemplateInstruction * p = (const cPtr_gtlTemplateInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlTemplateInstruction) ;
    result = p->mProperty_fileName ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlTemplateInstruction::getter_fileName (UNUSED_LOCATION_ARGS) const {
  return mProperty_fileName ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool GALGAS_gtlTemplateInstruction::getter_ifExists (UNUSED_LOCATION_ARGS) const {
  GALGAS_bool result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlTemplateInstruction * p = (const cPtr_gtlTemplateInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlTemplateInstruction) ;
    result = p->mProperty_ifExists ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool cPtr_gtlTemplateInstruction::getter_ifExists (UNUSED_LOCATION_ARGS) const {
  return mProperty_ifExists ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool GALGAS_gtlTemplateInstruction::getter_isGlobal (UNUSED_LOCATION_ARGS) const {
  GALGAS_bool result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlTemplateInstruction * p = (const cPtr_gtlTemplateInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlTemplateInstruction) ;
    result = p->mProperty_isGlobal ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool cPtr_gtlTemplateInstruction::getter_isGlobal (UNUSED_LOCATION_ARGS) const {
  return mProperty_isGlobal ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpressionList GALGAS_gtlTemplateInstruction::getter_arguments (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpressionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlTemplateInstruction * p = (const cPtr_gtlTemplateInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlTemplateInstruction) ;
    result = p->mProperty_arguments ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpressionList cPtr_gtlTemplateInstruction::getter_arguments (UNUSED_LOCATION_ARGS) const {
  return mProperty_arguments ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlTemplateInstruction::getter_instructionsIfNotFound (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlTemplateInstruction * p = (const cPtr_gtlTemplateInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlTemplateInstruction) ;
    result = p->mProperty_instructionsIfNotFound ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlTemplateInstruction::getter_instructionsIfNotFound (UNUSED_LOCATION_ARGS) const {
  return mProperty_instructionsIfNotFound ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                   Pointer class for @gtlTemplateInstruction class                                   *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlTemplateInstruction::cPtr_gtlTemplateInstruction (const GALGAS_location & in_where,
                                                          const GALGAS_string & in_signature,
                                                          const GALGAS_lstring & in_prefix,
                                                          const GALGAS_gtlExpression & in_fileName,
                                                          const GALGAS_bool & in_ifExists,
                                                          const GALGAS_bool & in_isGlobal,
                                                          const GALGAS_gtlExpressionList & in_arguments,
                                                          const GALGAS_gtlInstructionList & in_instructionsIfNotFound
                                                          COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_prefix (in_prefix),
mProperty_fileName (in_fileName),
mProperty_ifExists (in_ifExists),
mProperty_isGlobal (in_isGlobal),
mProperty_arguments (in_arguments),
mProperty_instructionsIfNotFound (in_instructionsIfNotFound) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlTemplateInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlTemplateInstruction ;
}

void cPtr_gtlTemplateInstruction::description (C_String & ioString,
                                               const int32_t inIndentation) const {
  ioString << "[@gtlTemplateInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_prefix.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_fileName.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_ifExists.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_isGlobal.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_arguments.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_instructionsIfNotFound.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlTemplateInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlTemplateInstruction (mProperty_where, mProperty_signature, mProperty_prefix, mProperty_fileName, mProperty_ifExists, mProperty_isGlobal, mProperty_arguments, mProperty_instructionsIfNotFound COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                            @gtlTemplateInstruction type                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlTemplateInstruction ("gtlTemplateInstruction",
                                               & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlTemplateInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlTemplateInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlTemplateInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlTemplateInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlTemplateInstruction GALGAS_gtlTemplateInstruction::extractObject (const GALGAS_object & inObject,
                                                                            C_Compiler * inCompiler
                                                                            COMMA_LOCATION_ARGS) {
  GALGAS_gtlTemplateInstruction result ;
  const GALGAS_gtlTemplateInstruction * p = (const GALGAS_gtlTemplateInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlTemplateInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlTemplateInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlForeachStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_keyName.objectCompare (p->mProperty_keyName) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_variableName.objectCompare (p->mProperty_variableName) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_indexName.objectCompare (p->mProperty_indexName) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_iterable.objectCompare (p->mProperty_iterable) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_beforeList.objectCompare (p->mProperty_beforeList) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_betweenList.objectCompare (p->mProperty_betweenList) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_afterList.objectCompare (p->mProperty_afterList) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_doList.objectCompare (p->mProperty_doList) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlForeachStatementInstruction::objectCompare (const GALGAS_gtlForeachStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForeachStatementInstruction::GALGAS_gtlForeachStatementInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForeachStatementInstruction::GALGAS_gtlForeachStatementInstruction (const cPtr_gtlForeachStatementInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlForeachStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForeachStatementInstruction GALGAS_gtlForeachStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                              const GALGAS_string & inAttribute_signature,
                                                                                              const GALGAS_lstring & inAttribute_keyName,
                                                                                              const GALGAS_lstring & inAttribute_variableName,
                                                                                              const GALGAS_lstring & inAttribute_indexName,
                                                                                              const GALGAS_gtlExpression & inAttribute_iterable,
                                                                                              const GALGAS_gtlInstructionList & inAttribute_beforeList,
                                                                                              const GALGAS_gtlInstructionList & inAttribute_betweenList,
                                                                                              const GALGAS_gtlInstructionList & inAttribute_afterList,
                                                                                              const GALGAS_gtlInstructionList & inAttribute_doList
                                                                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlForeachStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_keyName.isValid () && inAttribute_variableName.isValid () && inAttribute_indexName.isValid () && inAttribute_iterable.isValid () && inAttribute_beforeList.isValid () && inAttribute_betweenList.isValid () && inAttribute_afterList.isValid () && inAttribute_doList.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlForeachStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_keyName, inAttribute_variableName, inAttribute_indexName, inAttribute_iterable, inAttribute_beforeList, inAttribute_betweenList, inAttribute_afterList, inAttribute_doList COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlForeachStatementInstruction::getter_keyName (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
    result = p->mProperty_keyName ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlForeachStatementInstruction::getter_keyName (UNUSED_LOCATION_ARGS) const {
  return mProperty_keyName ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlForeachStatementInstruction::getter_variableName (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
    result = p->mProperty_variableName ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlForeachStatementInstruction::getter_variableName (UNUSED_LOCATION_ARGS) const {
  return mProperty_variableName ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlForeachStatementInstruction::getter_indexName (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
    result = p->mProperty_indexName ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlForeachStatementInstruction::getter_indexName (UNUSED_LOCATION_ARGS) const {
  return mProperty_indexName ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlForeachStatementInstruction::getter_iterable (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
    result = p->mProperty_iterable ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlForeachStatementInstruction::getter_iterable (UNUSED_LOCATION_ARGS) const {
  return mProperty_iterable ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlForeachStatementInstruction::getter_beforeList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
    result = p->mProperty_beforeList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlForeachStatementInstruction::getter_beforeList (UNUSED_LOCATION_ARGS) const {
  return mProperty_beforeList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlForeachStatementInstruction::getter_betweenList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
    result = p->mProperty_betweenList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlForeachStatementInstruction::getter_betweenList (UNUSED_LOCATION_ARGS) const {
  return mProperty_betweenList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlForeachStatementInstruction::getter_afterList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
    result = p->mProperty_afterList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlForeachStatementInstruction::getter_afterList (UNUSED_LOCATION_ARGS) const {
  return mProperty_afterList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlForeachStatementInstruction::getter_doList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForeachStatementInstruction * p = (const cPtr_gtlForeachStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForeachStatementInstruction) ;
    result = p->mProperty_doList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlForeachStatementInstruction::getter_doList (UNUSED_LOCATION_ARGS) const {
  return mProperty_doList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                               Pointer class for @gtlForeachStatementInstruction class                               *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlForeachStatementInstruction::cPtr_gtlForeachStatementInstruction (const GALGAS_location & in_where,
                                                                          const GALGAS_string & in_signature,
                                                                          const GALGAS_lstring & in_keyName,
                                                                          const GALGAS_lstring & in_variableName,
                                                                          const GALGAS_lstring & in_indexName,
                                                                          const GALGAS_gtlExpression & in_iterable,
                                                                          const GALGAS_gtlInstructionList & in_beforeList,
                                                                          const GALGAS_gtlInstructionList & in_betweenList,
                                                                          const GALGAS_gtlInstructionList & in_afterList,
                                                                          const GALGAS_gtlInstructionList & in_doList
                                                                          COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_keyName (in_keyName),
mProperty_variableName (in_variableName),
mProperty_indexName (in_indexName),
mProperty_iterable (in_iterable),
mProperty_beforeList (in_beforeList),
mProperty_betweenList (in_betweenList),
mProperty_afterList (in_afterList),
mProperty_doList (in_doList) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlForeachStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlForeachStatementInstruction ;
}

void cPtr_gtlForeachStatementInstruction::description (C_String & ioString,
                                                       const int32_t inIndentation) const {
  ioString << "[@gtlForeachStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_keyName.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_variableName.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_indexName.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_iterable.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_beforeList.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_betweenList.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_afterList.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_doList.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlForeachStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlForeachStatementInstruction (mProperty_where, mProperty_signature, mProperty_keyName, mProperty_variableName, mProperty_indexName, mProperty_iterable, mProperty_beforeList, mProperty_betweenList, mProperty_afterList, mProperty_doList COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                        @gtlForeachStatementInstruction type                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlForeachStatementInstruction ("gtlForeachStatementInstruction",
                                                       & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlForeachStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlForeachStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlForeachStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlForeachStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForeachStatementInstruction GALGAS_gtlForeachStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                            C_Compiler * inCompiler
                                                                                            COMMA_LOCATION_ARGS) {
  GALGAS_gtlForeachStatementInstruction result ;
  const GALGAS_gtlForeachStatementInstruction * p = (const GALGAS_gtlForeachStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlForeachStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlForeachStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                           Extension method '@gtlForeachStatementInstruction iterateOnMap'                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_gtlForeachStatementInstruction_iterateOnMap> gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnMap ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_iterateOnMap (const int32_t inClassIndex,
                                        extensionMethodSignature_gtlForeachStatementInstruction_iterateOnMap inMethod) {
  gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnMap.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_iterateOnMap (const cPtr_gtlForeachStatementInstruction * inObject,
                                       GALGAS_gtlContext & io_context,
                                       GALGAS_gtlData & io_vars,
                                       GALGAS_library & io_lib,
                                       GALGAS_string & io_outputString,
                                       const GALGAS_gtlMap constin_iterableMap,
                                       C_Compiler * inCompiler
                                       COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlForeachStatementInstruction) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_gtlForeachStatementInstruction_iterateOnMap f = NULL ;
    if (classIndex < gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnMap.count ()) {
      f = gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnMap (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnMap.count ()) {
           f = gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnMap (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnMap.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, io_context, io_vars, io_lib, io_outputString, constin_iterableMap, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_gtlForeachStatementInstruction_iterateOnMap (const cPtr_gtlForeachStatementInstruction * inObject,
                                                                         GALGAS_gtlContext & ioArgument_context,
                                                                         GALGAS_gtlData & ioArgument_vars,
                                                                         GALGAS_library & ioArgument_lib,
                                                                         GALGAS_string & ioArgument_outputString,
                                                                         const GALGAS_gtlMap constinArgument_iterableMap,
                                                                         C_Compiler * inCompiler
                                                                         COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_gtlForeachStatementInstruction * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlForeachStatementInstruction) ;
  GALGAS_lstring temp_0 ;
  const enumGalgasBool test_1 = GALGAS_bool (kIsEqual, GALGAS_string::makeEmptyString ().objectCompare (object->mProperty_keyName.getter_string (SOURCE_FILE ("gtl_instructions.galgas", 619)))).boolEnum () ;
  if (kBoolTrue == test_1) {
    temp_0 = GALGAS_lstring::constructor_new (GALGAS_string ("KEY"), object->mProperty_keyName.getter_location (SOURCE_FILE ("gtl_instructions.galgas", 620))  COMMA_SOURCE_FILE ("gtl_instructions.galgas", 620)) ;
  }else if (kBoolFalse == test_1) {
    temp_0 = object->mProperty_keyName ;
  }
  GALGAS_lstring var_actualKeyName_18050 = temp_0 ;
  cEnumerator_gtlVarMap enumerator_18163 (constinArgument_iterableMap.getter_value (SOURCE_FILE ("gtl_instructions.galgas", 625)), kENUMERATION_UP) ;
  GALGAS_uint index_18137 ((uint32_t) 0) ;
  const bool bool_2 = true ;
  if (enumerator_18163.hasCurrentObject () && bool_2) {
    extensionMethod_execute (object->mProperty_beforeList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 627)) ;
    while (enumerator_18163.hasCurrentObject () && bool_2) {
      {
      ioArgument_vars.insulate (HERE) ;
      cPtr_gtlData * ptr_18260 = (cPtr_gtlData *) ioArgument_vars.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_18260, object->mProperty_variableName, enumerator_18163.current_value (HERE), inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 629)) ;
      }
      {
      ioArgument_vars.insulate (HERE) ;
      cPtr_gtlData * ptr_18309 = (cPtr_gtlData *) ioArgument_vars.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_18309, var_actualKeyName_18050, GALGAS_gtlString::constructor_new (object->mProperty_keyName.getter_location (SOURCE_FILE ("gtl_instructions.galgas", 631)), function_emptylstring (inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 631)), enumerator_18163.current_lkey (HERE).getter_string (SOURCE_FILE ("gtl_instructions.galgas", 631))  COMMA_SOURCE_FILE ("gtl_instructions.galgas", 631)), inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 630)) ;
      }
      {
      ioArgument_vars.insulate (HERE) ;
      cPtr_gtlData * ptr_18423 = (cPtr_gtlData *) ioArgument_vars.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_18423, object->mProperty_indexName, GALGAS_gtlInt::constructor_new (object->mProperty_where, function_emptylstring (inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 634)), index_18137.getter_bigint (SOURCE_FILE ("gtl_instructions.galgas", 634))  COMMA_SOURCE_FILE ("gtl_instructions.galgas", 634)), inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 633)) ;
      }
      extensionMethod_execute (object->mProperty_doList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 636)) ;
      enumerator_18163.gotoNextObject () ;
      index_18137.increment () ;
      if (enumerator_18163.hasCurrentObject () && bool_2) {
        extensionMethod_execute (object->mProperty_betweenList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 638)) ;
      }
    }
    extensionMethod_execute (object->mProperty_afterList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 640)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_gtlForeachStatementInstruction_iterateOnMap (void) {
  enterExtensionMethod_iterateOnMap (kTypeDescriptor_GALGAS_gtlForeachStatementInstruction.mSlotID,
                                     extensionMethod_gtlForeachStatementInstruction_iterateOnMap) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_gtlForeachStatementInstruction_iterateOnMap (void) {
  gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnMap.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_gtlForeachStatementInstruction_iterateOnMap (defineExtensionMethod_gtlForeachStatementInstruction_iterateOnMap,
                                                                        freeExtensionMethod_gtlForeachStatementInstruction_iterateOnMap) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                          Extension method '@gtlForeachStatementInstruction iterateOnList'                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_gtlForeachStatementInstruction_iterateOnList> gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnList ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_iterateOnList (const int32_t inClassIndex,
                                         extensionMethodSignature_gtlForeachStatementInstruction_iterateOnList inMethod) {
  gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnList.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_iterateOnList (const cPtr_gtlForeachStatementInstruction * inObject,
                                        GALGAS_gtlContext & io_context,
                                        GALGAS_gtlData & io_vars,
                                        GALGAS_library & io_lib,
                                        GALGAS_string & io_outputString,
                                        const GALGAS_gtlList constin_iterableList,
                                        C_Compiler * inCompiler
                                        COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlForeachStatementInstruction) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_gtlForeachStatementInstruction_iterateOnList f = NULL ;
    if (classIndex < gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnList.count ()) {
      f = gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnList (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnList.count ()) {
           f = gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnList (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnList.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, io_context, io_vars, io_lib, io_outputString, constin_iterableList, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_gtlForeachStatementInstruction_iterateOnList (const cPtr_gtlForeachStatementInstruction * inObject,
                                                                          GALGAS_gtlContext & ioArgument_context,
                                                                          GALGAS_gtlData & ioArgument_vars,
                                                                          GALGAS_library & ioArgument_lib,
                                                                          GALGAS_string & ioArgument_outputString,
                                                                          const GALGAS_gtlList constinArgument_iterableList,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_gtlForeachStatementInstruction * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlForeachStatementInstruction) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsNotEqual, GALGAS_string::makeEmptyString ().objectCompare (object->mProperty_keyName.getter_string (SOURCE_FILE ("gtl_instructions.galgas", 651)))).boolEnum () ;
    if (kBoolTrue == test_0) {
      TC_Array <C_FixItDescription> fixItArray1 ;
      inCompiler->emitSemanticWarning (object->mProperty_keyName.getter_location (SOURCE_FILE ("gtl_instructions.galgas", 652)), GALGAS_string ("a key variable cannot be define when iterating on a list"), fixItArray1  COMMA_SOURCE_FILE ("gtl_instructions.galgas", 652)) ;
    }
  }
  cEnumerator_list enumerator_19056 (constinArgument_iterableList.getter_value (SOURCE_FILE ("gtl_instructions.galgas", 654)), kENUMERATION_UP) ;
  GALGAS_uint index_19029 ((uint32_t) 0) ;
  const bool bool_2 = true ;
  if (enumerator_19056.hasCurrentObject () && bool_2) {
    extensionMethod_execute (object->mProperty_beforeList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 656)) ;
    while (enumerator_19056.hasCurrentObject () && bool_2) {
      {
      ioArgument_vars.insulate (HERE) ;
      cPtr_gtlData * ptr_19153 = (cPtr_gtlData *) ioArgument_vars.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_19153, object->mProperty_variableName, enumerator_19056.current_value (HERE), inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 658)) ;
      }
      {
      ioArgument_vars.insulate (HERE) ;
      cPtr_gtlData * ptr_19202 = (cPtr_gtlData *) ioArgument_vars.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_19202, object->mProperty_indexName, GALGAS_gtlInt::constructor_new (object->mProperty_where, function_emptylstring (inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 660)), index_19029.getter_bigint (SOURCE_FILE ("gtl_instructions.galgas", 660))  COMMA_SOURCE_FILE ("gtl_instructions.galgas", 660)), inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 659)) ;
      }
      extensionMethod_execute (object->mProperty_doList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 662)) ;
      enumerator_19056.gotoNextObject () ;
      index_19029.increment () ;
      if (enumerator_19056.hasCurrentObject () && bool_2) {
        extensionMethod_execute (object->mProperty_betweenList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 664)) ;
      }
    }
    extensionMethod_execute (object->mProperty_afterList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 666)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_gtlForeachStatementInstruction_iterateOnList (void) {
  enterExtensionMethod_iterateOnList (kTypeDescriptor_GALGAS_gtlForeachStatementInstruction.mSlotID,
                                      extensionMethod_gtlForeachStatementInstruction_iterateOnList) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_gtlForeachStatementInstruction_iterateOnList (void) {
  gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnList.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_gtlForeachStatementInstruction_iterateOnList (defineExtensionMethod_gtlForeachStatementInstruction_iterateOnList,
                                                                         freeExtensionMethod_gtlForeachStatementInstruction_iterateOnList) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                           Extension method '@gtlForeachStatementInstruction iterateOnSet'                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_gtlForeachStatementInstruction_iterateOnSet> gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnSet ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_iterateOnSet (const int32_t inClassIndex,
                                        extensionMethodSignature_gtlForeachStatementInstruction_iterateOnSet inMethod) {
  gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnSet.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_iterateOnSet (const cPtr_gtlForeachStatementInstruction * inObject,
                                       GALGAS_gtlContext & io_context,
                                       GALGAS_gtlData & io_vars,
                                       GALGAS_library & io_lib,
                                       GALGAS_string & io_outputString,
                                       const GALGAS_gtlSet constin_iterableSet,
                                       C_Compiler * inCompiler
                                       COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlForeachStatementInstruction) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_gtlForeachStatementInstruction_iterateOnSet f = NULL ;
    if (classIndex < gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnSet.count ()) {
      f = gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnSet (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnSet.count ()) {
           f = gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnSet (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnSet.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, io_context, io_vars, io_lib, io_outputString, constin_iterableSet, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_gtlForeachStatementInstruction_iterateOnSet (const cPtr_gtlForeachStatementInstruction * inObject,
                                                                         GALGAS_gtlContext & ioArgument_context,
                                                                         GALGAS_gtlData & ioArgument_vars,
                                                                         GALGAS_library & ioArgument_lib,
                                                                         GALGAS_string & ioArgument_outputString,
                                                                         const GALGAS_gtlSet constinArgument_iterableSet,
                                                                         C_Compiler * inCompiler
                                                                         COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_gtlForeachStatementInstruction * object = inObject ;
  macroValidSharedObject (object, cPtr_gtlForeachStatementInstruction) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsNotEqual, GALGAS_string::makeEmptyString ().objectCompare (object->mProperty_keyName.getter_string (SOURCE_FILE ("gtl_instructions.galgas", 677)))).boolEnum () ;
    if (kBoolTrue == test_0) {
      TC_Array <C_FixItDescription> fixItArray1 ;
      inCompiler->emitSemanticWarning (object->mProperty_keyName.getter_location (SOURCE_FILE ("gtl_instructions.galgas", 678)), GALGAS_string ("a key variable cannot be define when iterating on a set"), fixItArray1  COMMA_SOURCE_FILE ("gtl_instructions.galgas", 678)) ;
    }
  }
  cEnumerator_lstringset enumerator_19826 (constinArgument_iterableSet.getter_value (SOURCE_FILE ("gtl_instructions.galgas", 680)), kENUMERATION_UP) ;
  GALGAS_uint index_19800 ((uint32_t) 0) ;
  const bool bool_2 = true ;
  if (enumerator_19826.hasCurrentObject () && bool_2) {
    extensionMethod_execute (object->mProperty_beforeList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 682)) ;
    while (enumerator_19826.hasCurrentObject () && bool_2) {
      {
      ioArgument_vars.insulate (HERE) ;
      cPtr_gtlData * ptr_19923 = (cPtr_gtlData *) ioArgument_vars.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_19923, object->mProperty_variableName, GALGAS_gtlString::constructor_new (enumerator_19826.current_lkey (HERE).getter_location (SOURCE_FILE ("gtl_instructions.galgas", 686)), function_emptylstring (inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 686)), enumerator_19826.current_lkey (HERE).getter_string (SOURCE_FILE ("gtl_instructions.galgas", 686))  COMMA_SOURCE_FILE ("gtl_instructions.galgas", 686)), inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 684)) ;
      }
      {
      ioArgument_vars.insulate (HERE) ;
      cPtr_gtlData * ptr_20030 = (cPtr_gtlData *) ioArgument_vars.ptr () ;
      callExtensionSetter_setStructField ((cPtr_gtlData *) ptr_20030, object->mProperty_indexName, GALGAS_gtlInt::constructor_new (object->mProperty_where, function_emptylstring (inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 689)), index_19800.getter_bigint (SOURCE_FILE ("gtl_instructions.galgas", 689))  COMMA_SOURCE_FILE ("gtl_instructions.galgas", 689)), inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 688)) ;
      }
      extensionMethod_execute (object->mProperty_doList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 691)) ;
      enumerator_19826.gotoNextObject () ;
      index_19800.increment () ;
      if (enumerator_19826.hasCurrentObject () && bool_2) {
        extensionMethod_execute (object->mProperty_betweenList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 693)) ;
      }
    }
    extensionMethod_execute (object->mProperty_afterList, ioArgument_context, ioArgument_vars, ioArgument_lib, ioArgument_outputString, inCompiler COMMA_SOURCE_FILE ("gtl_instructions.galgas", 695)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_gtlForeachStatementInstruction_iterateOnSet (void) {
  enterExtensionMethod_iterateOnSet (kTypeDescriptor_GALGAS_gtlForeachStatementInstruction.mSlotID,
                                     extensionMethod_gtlForeachStatementInstruction_iterateOnSet) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_gtlForeachStatementInstruction_iterateOnSet (void) {
  gExtensionMethodTable_gtlForeachStatementInstruction_iterateOnSet.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_gtlForeachStatementInstruction_iterateOnSet (defineExtensionMethod_gtlForeachStatementInstruction_iterateOnSet,
                                                                        freeExtensionMethod_gtlForeachStatementInstruction_iterateOnSet) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlForStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlForStatementInstruction * p = (const cPtr_gtlForStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlForStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_identifier.objectCompare (p->mProperty_identifier) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_iterable.objectCompare (p->mProperty_iterable) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_betweenList.objectCompare (p->mProperty_betweenList) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_doList.objectCompare (p->mProperty_doList) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlForStatementInstruction::objectCompare (const GALGAS_gtlForStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForStatementInstruction::GALGAS_gtlForStatementInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForStatementInstruction GALGAS_gtlForStatementInstruction::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlForStatementInstruction::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                                             GALGAS_string::constructor_default (HERE),
                                                             GALGAS_lstring::constructor_default (HERE),
                                                             GALGAS_gtlExpressionList::constructor_emptyList (HERE),
                                                             GALGAS_gtlInstructionList::constructor_emptyList (HERE),
                                                             GALGAS_gtlInstructionList::constructor_emptyList (HERE)
                                                             COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForStatementInstruction::GALGAS_gtlForStatementInstruction (const cPtr_gtlForStatementInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlForStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForStatementInstruction GALGAS_gtlForStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                      const GALGAS_string & inAttribute_signature,
                                                                                      const GALGAS_lstring & inAttribute_identifier,
                                                                                      const GALGAS_gtlExpressionList & inAttribute_iterable,
                                                                                      const GALGAS_gtlInstructionList & inAttribute_betweenList,
                                                                                      const GALGAS_gtlInstructionList & inAttribute_doList
                                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlForStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_identifier.isValid () && inAttribute_iterable.isValid () && inAttribute_betweenList.isValid () && inAttribute_doList.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlForStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_identifier, inAttribute_iterable, inAttribute_betweenList, inAttribute_doList COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlForStatementInstruction::getter_identifier (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForStatementInstruction * p = (const cPtr_gtlForStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForStatementInstruction) ;
    result = p->mProperty_identifier ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlForStatementInstruction::getter_identifier (UNUSED_LOCATION_ARGS) const {
  return mProperty_identifier ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpressionList GALGAS_gtlForStatementInstruction::getter_iterable (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpressionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForStatementInstruction * p = (const cPtr_gtlForStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForStatementInstruction) ;
    result = p->mProperty_iterable ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpressionList cPtr_gtlForStatementInstruction::getter_iterable (UNUSED_LOCATION_ARGS) const {
  return mProperty_iterable ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlForStatementInstruction::getter_betweenList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForStatementInstruction * p = (const cPtr_gtlForStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForStatementInstruction) ;
    result = p->mProperty_betweenList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlForStatementInstruction::getter_betweenList (UNUSED_LOCATION_ARGS) const {
  return mProperty_betweenList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlForStatementInstruction::getter_doList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlForStatementInstruction * p = (const cPtr_gtlForStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlForStatementInstruction) ;
    result = p->mProperty_doList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlForStatementInstruction::getter_doList (UNUSED_LOCATION_ARGS) const {
  return mProperty_doList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                 Pointer class for @gtlForStatementInstruction class                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlForStatementInstruction::cPtr_gtlForStatementInstruction (const GALGAS_location & in_where,
                                                                  const GALGAS_string & in_signature,
                                                                  const GALGAS_lstring & in_identifier,
                                                                  const GALGAS_gtlExpressionList & in_iterable,
                                                                  const GALGAS_gtlInstructionList & in_betweenList,
                                                                  const GALGAS_gtlInstructionList & in_doList
                                                                  COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_identifier (in_identifier),
mProperty_iterable (in_iterable),
mProperty_betweenList (in_betweenList),
mProperty_doList (in_doList) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlForStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlForStatementInstruction ;
}

void cPtr_gtlForStatementInstruction::description (C_String & ioString,
                                                   const int32_t inIndentation) const {
  ioString << "[@gtlForStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_identifier.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_iterable.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_betweenList.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_doList.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlForStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlForStatementInstruction (mProperty_where, mProperty_signature, mProperty_identifier, mProperty_iterable, mProperty_betweenList, mProperty_doList COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlForStatementInstruction type                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlForStatementInstruction ("gtlForStatementInstruction",
                                                   & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlForStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlForStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlForStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlForStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlForStatementInstruction GALGAS_gtlForStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                    C_Compiler * inCompiler
                                                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlForStatementInstruction result ;
  const GALGAS_gtlForStatementInstruction * p = (const GALGAS_gtlForStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlForStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlForStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlLoopStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_identifier.objectCompare (p->mProperty_identifier) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_start.objectCompare (p->mProperty_start) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_stop.objectCompare (p->mProperty_stop) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_step.objectCompare (p->mProperty_step) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_upDown.objectCompare (p->mProperty_upDown) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_beforeList.objectCompare (p->mProperty_beforeList) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_betweenList.objectCompare (p->mProperty_betweenList) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_afterList.objectCompare (p->mProperty_afterList) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_doList.objectCompare (p->mProperty_doList) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlLoopStatementInstruction::objectCompare (const GALGAS_gtlLoopStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLoopStatementInstruction::GALGAS_gtlLoopStatementInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLoopStatementInstruction::GALGAS_gtlLoopStatementInstruction (const cPtr_gtlLoopStatementInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlLoopStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLoopStatementInstruction GALGAS_gtlLoopStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                        const GALGAS_string & inAttribute_signature,
                                                                                        const GALGAS_lstring & inAttribute_identifier,
                                                                                        const GALGAS_gtlExpression & inAttribute_start,
                                                                                        const GALGAS_gtlExpression & inAttribute_stop,
                                                                                        const GALGAS_gtlExpression & inAttribute_step,
                                                                                        const GALGAS_sint_36__34_ & inAttribute_upDown,
                                                                                        const GALGAS_gtlInstructionList & inAttribute_beforeList,
                                                                                        const GALGAS_gtlInstructionList & inAttribute_betweenList,
                                                                                        const GALGAS_gtlInstructionList & inAttribute_afterList,
                                                                                        const GALGAS_gtlInstructionList & inAttribute_doList
                                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlLoopStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_identifier.isValid () && inAttribute_start.isValid () && inAttribute_stop.isValid () && inAttribute_step.isValid () && inAttribute_upDown.isValid () && inAttribute_beforeList.isValid () && inAttribute_betweenList.isValid () && inAttribute_afterList.isValid () && inAttribute_doList.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlLoopStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_identifier, inAttribute_start, inAttribute_stop, inAttribute_step, inAttribute_upDown, inAttribute_beforeList, inAttribute_betweenList, inAttribute_afterList, inAttribute_doList COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlLoopStatementInstruction::getter_identifier (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_identifier ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlLoopStatementInstruction::getter_identifier (UNUSED_LOCATION_ARGS) const {
  return mProperty_identifier ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlLoopStatementInstruction::getter_start (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_start ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlLoopStatementInstruction::getter_start (UNUSED_LOCATION_ARGS) const {
  return mProperty_start ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlLoopStatementInstruction::getter_stop (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_stop ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlLoopStatementInstruction::getter_stop (UNUSED_LOCATION_ARGS) const {
  return mProperty_stop ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlLoopStatementInstruction::getter_step (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_step ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlLoopStatementInstruction::getter_step (UNUSED_LOCATION_ARGS) const {
  return mProperty_step ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_sint_36__34_ GALGAS_gtlLoopStatementInstruction::getter_upDown (UNUSED_LOCATION_ARGS) const {
  GALGAS_sint_36__34_ result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_upDown ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_sint_36__34_ cPtr_gtlLoopStatementInstruction::getter_upDown (UNUSED_LOCATION_ARGS) const {
  return mProperty_upDown ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlLoopStatementInstruction::getter_beforeList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_beforeList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlLoopStatementInstruction::getter_beforeList (UNUSED_LOCATION_ARGS) const {
  return mProperty_beforeList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlLoopStatementInstruction::getter_betweenList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_betweenList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlLoopStatementInstruction::getter_betweenList (UNUSED_LOCATION_ARGS) const {
  return mProperty_betweenList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlLoopStatementInstruction::getter_afterList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_afterList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlLoopStatementInstruction::getter_afterList (UNUSED_LOCATION_ARGS) const {
  return mProperty_afterList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlLoopStatementInstruction::getter_doList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlLoopStatementInstruction * p = (const cPtr_gtlLoopStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlLoopStatementInstruction) ;
    result = p->mProperty_doList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlLoopStatementInstruction::getter_doList (UNUSED_LOCATION_ARGS) const {
  return mProperty_doList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                Pointer class for @gtlLoopStatementInstruction class                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlLoopStatementInstruction::cPtr_gtlLoopStatementInstruction (const GALGAS_location & in_where,
                                                                    const GALGAS_string & in_signature,
                                                                    const GALGAS_lstring & in_identifier,
                                                                    const GALGAS_gtlExpression & in_start,
                                                                    const GALGAS_gtlExpression & in_stop,
                                                                    const GALGAS_gtlExpression & in_step,
                                                                    const GALGAS_sint_36__34_ & in_upDown,
                                                                    const GALGAS_gtlInstructionList & in_beforeList,
                                                                    const GALGAS_gtlInstructionList & in_betweenList,
                                                                    const GALGAS_gtlInstructionList & in_afterList,
                                                                    const GALGAS_gtlInstructionList & in_doList
                                                                    COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_identifier (in_identifier),
mProperty_start (in_start),
mProperty_stop (in_stop),
mProperty_step (in_step),
mProperty_upDown (in_upDown),
mProperty_beforeList (in_beforeList),
mProperty_betweenList (in_betweenList),
mProperty_afterList (in_afterList),
mProperty_doList (in_doList) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlLoopStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLoopStatementInstruction ;
}

void cPtr_gtlLoopStatementInstruction::description (C_String & ioString,
                                                    const int32_t inIndentation) const {
  ioString << "[@gtlLoopStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_identifier.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_start.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_stop.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_step.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_upDown.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_beforeList.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_betweenList.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_afterList.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_doList.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlLoopStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlLoopStatementInstruction (mProperty_where, mProperty_signature, mProperty_identifier, mProperty_start, mProperty_stop, mProperty_step, mProperty_upDown, mProperty_beforeList, mProperty_betweenList, mProperty_afterList, mProperty_doList COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlLoopStatementInstruction type                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlLoopStatementInstruction ("gtlLoopStatementInstruction",
                                                    & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlLoopStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlLoopStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlLoopStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlLoopStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlLoopStatementInstruction GALGAS_gtlLoopStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                      C_Compiler * inCompiler
                                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlLoopStatementInstruction result ;
  const GALGAS_gtlLoopStatementInstruction * p = (const GALGAS_gtlLoopStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlLoopStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlLoopStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlRepeatStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlRepeatStatementInstruction * p = (const cPtr_gtlRepeatStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlRepeatStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_limit.objectCompare (p->mProperty_limit) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_condition.objectCompare (p->mProperty_condition) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_continueList.objectCompare (p->mProperty_continueList) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_doList.objectCompare (p->mProperty_doList) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlRepeatStatementInstruction::objectCompare (const GALGAS_gtlRepeatStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlRepeatStatementInstruction::GALGAS_gtlRepeatStatementInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlRepeatStatementInstruction::GALGAS_gtlRepeatStatementInstruction (const cPtr_gtlRepeatStatementInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlRepeatStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlRepeatStatementInstruction GALGAS_gtlRepeatStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                            const GALGAS_string & inAttribute_signature,
                                                                                            const GALGAS_gtlExpression & inAttribute_limit,
                                                                                            const GALGAS_gtlExpression & inAttribute_condition,
                                                                                            const GALGAS_gtlInstructionList & inAttribute_continueList,
                                                                                            const GALGAS_gtlInstructionList & inAttribute_doList
                                                                                            COMMA_LOCATION_ARGS) {
  GALGAS_gtlRepeatStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_limit.isValid () && inAttribute_condition.isValid () && inAttribute_continueList.isValid () && inAttribute_doList.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlRepeatStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_limit, inAttribute_condition, inAttribute_continueList, inAttribute_doList COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlRepeatStatementInstruction::getter_limit (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlRepeatStatementInstruction * p = (const cPtr_gtlRepeatStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlRepeatStatementInstruction) ;
    result = p->mProperty_limit ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlRepeatStatementInstruction::getter_limit (UNUSED_LOCATION_ARGS) const {
  return mProperty_limit ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlRepeatStatementInstruction::getter_condition (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlRepeatStatementInstruction * p = (const cPtr_gtlRepeatStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlRepeatStatementInstruction) ;
    result = p->mProperty_condition ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlRepeatStatementInstruction::getter_condition (UNUSED_LOCATION_ARGS) const {
  return mProperty_condition ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlRepeatStatementInstruction::getter_continueList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlRepeatStatementInstruction * p = (const cPtr_gtlRepeatStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlRepeatStatementInstruction) ;
    result = p->mProperty_continueList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlRepeatStatementInstruction::getter_continueList (UNUSED_LOCATION_ARGS) const {
  return mProperty_continueList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList GALGAS_gtlRepeatStatementInstruction::getter_doList (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlInstructionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlRepeatStatementInstruction * p = (const cPtr_gtlRepeatStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlRepeatStatementInstruction) ;
    result = p->mProperty_doList ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlInstructionList cPtr_gtlRepeatStatementInstruction::getter_doList (UNUSED_LOCATION_ARGS) const {
  return mProperty_doList ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                               Pointer class for @gtlRepeatStatementInstruction class                                *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlRepeatStatementInstruction::cPtr_gtlRepeatStatementInstruction (const GALGAS_location & in_where,
                                                                        const GALGAS_string & in_signature,
                                                                        const GALGAS_gtlExpression & in_limit,
                                                                        const GALGAS_gtlExpression & in_condition,
                                                                        const GALGAS_gtlInstructionList & in_continueList,
                                                                        const GALGAS_gtlInstructionList & in_doList
                                                                        COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_limit (in_limit),
mProperty_condition (in_condition),
mProperty_continueList (in_continueList),
mProperty_doList (in_doList) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlRepeatStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlRepeatStatementInstruction ;
}

void cPtr_gtlRepeatStatementInstruction::description (C_String & ioString,
                                                      const int32_t inIndentation) const {
  ioString << "[@gtlRepeatStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_limit.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_condition.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_continueList.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_doList.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlRepeatStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlRepeatStatementInstruction (mProperty_where, mProperty_signature, mProperty_limit, mProperty_condition, mProperty_continueList, mProperty_doList COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @gtlRepeatStatementInstruction type                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlRepeatStatementInstruction ("gtlRepeatStatementInstruction",
                                                      & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlRepeatStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlRepeatStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlRepeatStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlRepeatStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlRepeatStatementInstruction GALGAS_gtlRepeatStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                          C_Compiler * inCompiler
                                                                                          COMMA_LOCATION_ARGS) {
  GALGAS_gtlRepeatStatementInstruction result ;
  const GALGAS_gtlRepeatStatementInstruction * p = (const GALGAS_gtlRepeatStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlRepeatStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlRepeatStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlErrorStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlErrorStatementInstruction * p = (const cPtr_gtlErrorStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlErrorStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_identifier.objectCompare (p->mProperty_identifier) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_hereInstead.objectCompare (p->mProperty_hereInstead) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_errorMessage.objectCompare (p->mProperty_errorMessage) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlErrorStatementInstruction::objectCompare (const GALGAS_gtlErrorStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlErrorStatementInstruction::GALGAS_gtlErrorStatementInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlErrorStatementInstruction::GALGAS_gtlErrorStatementInstruction (const cPtr_gtlErrorStatementInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlErrorStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlErrorStatementInstruction GALGAS_gtlErrorStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                          const GALGAS_string & inAttribute_signature,
                                                                                          const GALGAS_gtlVarPath & inAttribute_identifier,
                                                                                          const GALGAS_bool & inAttribute_hereInstead,
                                                                                          const GALGAS_gtlExpression & inAttribute_errorMessage
                                                                                          COMMA_LOCATION_ARGS) {
  GALGAS_gtlErrorStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_identifier.isValid () && inAttribute_hereInstead.isValid () && inAttribute_errorMessage.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlErrorStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_identifier, inAttribute_hereInstead, inAttribute_errorMessage COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarPath GALGAS_gtlErrorStatementInstruction::getter_identifier (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlVarPath result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlErrorStatementInstruction * p = (const cPtr_gtlErrorStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlErrorStatementInstruction) ;
    result = p->mProperty_identifier ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarPath cPtr_gtlErrorStatementInstruction::getter_identifier (UNUSED_LOCATION_ARGS) const {
  return mProperty_identifier ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool GALGAS_gtlErrorStatementInstruction::getter_hereInstead (UNUSED_LOCATION_ARGS) const {
  GALGAS_bool result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlErrorStatementInstruction * p = (const cPtr_gtlErrorStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlErrorStatementInstruction) ;
    result = p->mProperty_hereInstead ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool cPtr_gtlErrorStatementInstruction::getter_hereInstead (UNUSED_LOCATION_ARGS) const {
  return mProperty_hereInstead ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlErrorStatementInstruction::getter_errorMessage (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlErrorStatementInstruction * p = (const cPtr_gtlErrorStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlErrorStatementInstruction) ;
    result = p->mProperty_errorMessage ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlErrorStatementInstruction::getter_errorMessage (UNUSED_LOCATION_ARGS) const {
  return mProperty_errorMessage ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                Pointer class for @gtlErrorStatementInstruction class                                *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlErrorStatementInstruction::cPtr_gtlErrorStatementInstruction (const GALGAS_location & in_where,
                                                                      const GALGAS_string & in_signature,
                                                                      const GALGAS_gtlVarPath & in_identifier,
                                                                      const GALGAS_bool & in_hereInstead,
                                                                      const GALGAS_gtlExpression & in_errorMessage
                                                                      COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_identifier (in_identifier),
mProperty_hereInstead (in_hereInstead),
mProperty_errorMessage (in_errorMessage) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlErrorStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlErrorStatementInstruction ;
}

void cPtr_gtlErrorStatementInstruction::description (C_String & ioString,
                                                     const int32_t inIndentation) const {
  ioString << "[@gtlErrorStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_identifier.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_hereInstead.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_errorMessage.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlErrorStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlErrorStatementInstruction (mProperty_where, mProperty_signature, mProperty_identifier, mProperty_hereInstead, mProperty_errorMessage COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @gtlErrorStatementInstruction type                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlErrorStatementInstruction ("gtlErrorStatementInstruction",
                                                     & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlErrorStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlErrorStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlErrorStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlErrorStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlErrorStatementInstruction GALGAS_gtlErrorStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                        C_Compiler * inCompiler
                                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlErrorStatementInstruction result ;
  const GALGAS_gtlErrorStatementInstruction * p = (const GALGAS_gtlErrorStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlErrorStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlErrorStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlWarningStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlWarningStatementInstruction * p = (const cPtr_gtlWarningStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlWarningStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_identifier.objectCompare (p->mProperty_identifier) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_hereInstead.objectCompare (p->mProperty_hereInstead) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_warningMessage.objectCompare (p->mProperty_warningMessage) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlWarningStatementInstruction::objectCompare (const GALGAS_gtlWarningStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWarningStatementInstruction::GALGAS_gtlWarningStatementInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWarningStatementInstruction::GALGAS_gtlWarningStatementInstruction (const cPtr_gtlWarningStatementInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlWarningStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWarningStatementInstruction GALGAS_gtlWarningStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                              const GALGAS_string & inAttribute_signature,
                                                                                              const GALGAS_gtlVarPath & inAttribute_identifier,
                                                                                              const GALGAS_bool & inAttribute_hereInstead,
                                                                                              const GALGAS_gtlExpression & inAttribute_warningMessage
                                                                                              COMMA_LOCATION_ARGS) {
  GALGAS_gtlWarningStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_identifier.isValid () && inAttribute_hereInstead.isValid () && inAttribute_warningMessage.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlWarningStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_identifier, inAttribute_hereInstead, inAttribute_warningMessage COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarPath GALGAS_gtlWarningStatementInstruction::getter_identifier (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlVarPath result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlWarningStatementInstruction * p = (const cPtr_gtlWarningStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlWarningStatementInstruction) ;
    result = p->mProperty_identifier ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarPath cPtr_gtlWarningStatementInstruction::getter_identifier (UNUSED_LOCATION_ARGS) const {
  return mProperty_identifier ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool GALGAS_gtlWarningStatementInstruction::getter_hereInstead (UNUSED_LOCATION_ARGS) const {
  GALGAS_bool result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlWarningStatementInstruction * p = (const cPtr_gtlWarningStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlWarningStatementInstruction) ;
    result = p->mProperty_hereInstead ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool cPtr_gtlWarningStatementInstruction::getter_hereInstead (UNUSED_LOCATION_ARGS) const {
  return mProperty_hereInstead ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlWarningStatementInstruction::getter_warningMessage (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlWarningStatementInstruction * p = (const cPtr_gtlWarningStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlWarningStatementInstruction) ;
    result = p->mProperty_warningMessage ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlWarningStatementInstruction::getter_warningMessage (UNUSED_LOCATION_ARGS) const {
  return mProperty_warningMessage ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                               Pointer class for @gtlWarningStatementInstruction class                               *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlWarningStatementInstruction::cPtr_gtlWarningStatementInstruction (const GALGAS_location & in_where,
                                                                          const GALGAS_string & in_signature,
                                                                          const GALGAS_gtlVarPath & in_identifier,
                                                                          const GALGAS_bool & in_hereInstead,
                                                                          const GALGAS_gtlExpression & in_warningMessage
                                                                          COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_identifier (in_identifier),
mProperty_hereInstead (in_hereInstead),
mProperty_warningMessage (in_warningMessage) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlWarningStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlWarningStatementInstruction ;
}

void cPtr_gtlWarningStatementInstruction::description (C_String & ioString,
                                                       const int32_t inIndentation) const {
  ioString << "[@gtlWarningStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_identifier.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_hereInstead.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_warningMessage.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlWarningStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlWarningStatementInstruction (mProperty_where, mProperty_signature, mProperty_identifier, mProperty_hereInstead, mProperty_warningMessage COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                        @gtlWarningStatementInstruction type                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlWarningStatementInstruction ("gtlWarningStatementInstruction",
                                                       & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlWarningStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlWarningStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlWarningStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlWarningStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWarningStatementInstruction GALGAS_gtlWarningStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                            C_Compiler * inCompiler
                                                                                            COMMA_LOCATION_ARGS) {
  GALGAS_gtlWarningStatementInstruction result ;
  const GALGAS_gtlWarningStatementInstruction * p = (const GALGAS_gtlWarningStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlWarningStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlWarningStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlPrintStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlPrintStatementInstruction * p = (const cPtr_gtlPrintStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlPrintStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_carriageReturn.objectCompare (p->mProperty_carriageReturn) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_messageToPrint.objectCompare (p->mProperty_messageToPrint) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlPrintStatementInstruction::objectCompare (const GALGAS_gtlPrintStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlPrintStatementInstruction::GALGAS_gtlPrintStatementInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlPrintStatementInstruction::GALGAS_gtlPrintStatementInstruction (const cPtr_gtlPrintStatementInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlPrintStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlPrintStatementInstruction GALGAS_gtlPrintStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                          const GALGAS_string & inAttribute_signature,
                                                                                          const GALGAS_bool & inAttribute_carriageReturn,
                                                                                          const GALGAS_gtlExpression & inAttribute_messageToPrint
                                                                                          COMMA_LOCATION_ARGS) {
  GALGAS_gtlPrintStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_carriageReturn.isValid () && inAttribute_messageToPrint.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlPrintStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_carriageReturn, inAttribute_messageToPrint COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool GALGAS_gtlPrintStatementInstruction::getter_carriageReturn (UNUSED_LOCATION_ARGS) const {
  GALGAS_bool result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlPrintStatementInstruction * p = (const cPtr_gtlPrintStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlPrintStatementInstruction) ;
    result = p->mProperty_carriageReturn ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool cPtr_gtlPrintStatementInstruction::getter_carriageReturn (UNUSED_LOCATION_ARGS) const {
  return mProperty_carriageReturn ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlPrintStatementInstruction::getter_messageToPrint (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlPrintStatementInstruction * p = (const cPtr_gtlPrintStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlPrintStatementInstruction) ;
    result = p->mProperty_messageToPrint ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlPrintStatementInstruction::getter_messageToPrint (UNUSED_LOCATION_ARGS) const {
  return mProperty_messageToPrint ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                Pointer class for @gtlPrintStatementInstruction class                                *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlPrintStatementInstruction::cPtr_gtlPrintStatementInstruction (const GALGAS_location & in_where,
                                                                      const GALGAS_string & in_signature,
                                                                      const GALGAS_bool & in_carriageReturn,
                                                                      const GALGAS_gtlExpression & in_messageToPrint
                                                                      COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_carriageReturn (in_carriageReturn),
mProperty_messageToPrint (in_messageToPrint) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlPrintStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlPrintStatementInstruction ;
}

void cPtr_gtlPrintStatementInstruction::description (C_String & ioString,
                                                     const int32_t inIndentation) const {
  ioString << "[@gtlPrintStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_carriageReturn.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_messageToPrint.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlPrintStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlPrintStatementInstruction (mProperty_where, mProperty_signature, mProperty_carriageReturn, mProperty_messageToPrint COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @gtlPrintStatementInstruction type                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlPrintStatementInstruction ("gtlPrintStatementInstruction",
                                                     & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlPrintStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlPrintStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlPrintStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlPrintStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlPrintStatementInstruction GALGAS_gtlPrintStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                        C_Compiler * inCompiler
                                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlPrintStatementInstruction result ;
  const GALGAS_gtlPrintStatementInstruction * p = (const GALGAS_gtlPrintStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlPrintStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlPrintStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlSortStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlSortStatementInstruction * p = (const cPtr_gtlSortStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlSortStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_variablePath.objectCompare (p->mProperty_variablePath) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_order.objectCompare (p->mProperty_order) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlSortStatementInstruction::objectCompare (const GALGAS_gtlSortStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSortStatementInstruction::GALGAS_gtlSortStatementInstruction (void) :
GALGAS_gtlAbstractSortInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSortStatementInstruction GALGAS_gtlSortStatementInstruction::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlSortStatementInstruction::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                                              GALGAS_string::constructor_default (HERE),
                                                              GALGAS_gtlVarPath::constructor_emptyList (HERE),
                                                              GALGAS_lsint::constructor_default (HERE)
                                                              COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSortStatementInstruction::GALGAS_gtlSortStatementInstruction (const cPtr_gtlSortStatementInstruction * inSourcePtr) :
GALGAS_gtlAbstractSortInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlSortStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSortStatementInstruction GALGAS_gtlSortStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                        const GALGAS_string & inAttribute_signature,
                                                                                        const GALGAS_gtlVarPath & inAttribute_variablePath,
                                                                                        const GALGAS_lsint & inAttribute_order
                                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlSortStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_variablePath.isValid () && inAttribute_order.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlSortStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_variablePath, inAttribute_order COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lsint GALGAS_gtlSortStatementInstruction::getter_order (UNUSED_LOCATION_ARGS) const {
  GALGAS_lsint result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlSortStatementInstruction * p = (const cPtr_gtlSortStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlSortStatementInstruction) ;
    result = p->mProperty_order ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lsint cPtr_gtlSortStatementInstruction::getter_order (UNUSED_LOCATION_ARGS) const {
  return mProperty_order ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                Pointer class for @gtlSortStatementInstruction class                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlSortStatementInstruction::cPtr_gtlSortStatementInstruction (const GALGAS_location & in_where,
                                                                    const GALGAS_string & in_signature,
                                                                    const GALGAS_gtlVarPath & in_variablePath,
                                                                    const GALGAS_lsint & in_order
                                                                    COMMA_LOCATION_ARGS) :
cPtr_gtlAbstractSortInstruction (in_where, in_signature, in_variablePath COMMA_THERE),
mProperty_order (in_order) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlSortStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlSortStatementInstruction ;
}

void cPtr_gtlSortStatementInstruction::description (C_String & ioString,
                                                    const int32_t inIndentation) const {
  ioString << "[@gtlSortStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_variablePath.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_order.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlSortStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlSortStatementInstruction (mProperty_where, mProperty_signature, mProperty_variablePath, mProperty_order COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlSortStatementInstruction type                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlSortStatementInstruction ("gtlSortStatementInstruction",
                                                    & kTypeDescriptor_GALGAS_gtlAbstractSortInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlSortStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlSortStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlSortStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlSortStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSortStatementInstruction GALGAS_gtlSortStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                      C_Compiler * inCompiler
                                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlSortStatementInstruction result ;
  const GALGAS_gtlSortStatementInstruction * p = (const GALGAS_gtlSortStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlSortStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlSortStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlTabStatementInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlTabStatementInstruction * p = (const cPtr_gtlTabStatementInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlTabStatementInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_tabValue.objectCompare (p->mProperty_tabValue) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlTabStatementInstruction::objectCompare (const GALGAS_gtlTabStatementInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlTabStatementInstruction::GALGAS_gtlTabStatementInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlTabStatementInstruction::GALGAS_gtlTabStatementInstruction (const cPtr_gtlTabStatementInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlTabStatementInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlTabStatementInstruction GALGAS_gtlTabStatementInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                      const GALGAS_string & inAttribute_signature,
                                                                                      const GALGAS_gtlExpression & inAttribute_tabValue
                                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlTabStatementInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_tabValue.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlTabStatementInstruction (inAttribute_where, inAttribute_signature, inAttribute_tabValue COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlTabStatementInstruction::getter_tabValue (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlTabStatementInstruction * p = (const cPtr_gtlTabStatementInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlTabStatementInstruction) ;
    result = p->mProperty_tabValue ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlTabStatementInstruction::getter_tabValue (UNUSED_LOCATION_ARGS) const {
  return mProperty_tabValue ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                 Pointer class for @gtlTabStatementInstruction class                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlTabStatementInstruction::cPtr_gtlTabStatementInstruction (const GALGAS_location & in_where,
                                                                  const GALGAS_string & in_signature,
                                                                  const GALGAS_gtlExpression & in_tabValue
                                                                  COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_tabValue (in_tabValue) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlTabStatementInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlTabStatementInstruction ;
}

void cPtr_gtlTabStatementInstruction::description (C_String & ioString,
                                                   const int32_t inIndentation) const {
  ioString << "[@gtlTabStatementInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_tabValue.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlTabStatementInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlTabStatementInstruction (mProperty_where, mProperty_signature, mProperty_tabValue COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlTabStatementInstruction type                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlTabStatementInstruction ("gtlTabStatementInstruction",
                                                   & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlTabStatementInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlTabStatementInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlTabStatementInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlTabStatementInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlTabStatementInstruction GALGAS_gtlTabStatementInstruction::extractObject (const GALGAS_object & inObject,
                                                                                    C_Compiler * inCompiler
                                                                                    COMMA_LOCATION_ARGS) {
  GALGAS_gtlTabStatementInstruction result ;
  const GALGAS_gtlTabStatementInstruction * p = (const GALGAS_gtlTabStatementInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlTabStatementInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlTabStatementInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlSetterCallInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlSetterCallInstruction * p = (const cPtr_gtlSetterCallInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlSetterCallInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_target.objectCompare (p->mProperty_target) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_setterName.objectCompare (p->mProperty_setterName) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_arguments.objectCompare (p->mProperty_arguments) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlSetterCallInstruction::objectCompare (const GALGAS_gtlSetterCallInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetterCallInstruction::GALGAS_gtlSetterCallInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetterCallInstruction GALGAS_gtlSetterCallInstruction::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlSetterCallInstruction::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                                           GALGAS_string::constructor_default (HERE),
                                                           GALGAS_gtlVarPath::constructor_emptyList (HERE),
                                                           GALGAS_lstring::constructor_default (HERE),
                                                           GALGAS_gtlExpressionList::constructor_emptyList (HERE)
                                                           COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetterCallInstruction::GALGAS_gtlSetterCallInstruction (const cPtr_gtlSetterCallInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlSetterCallInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetterCallInstruction GALGAS_gtlSetterCallInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                  const GALGAS_string & inAttribute_signature,
                                                                                  const GALGAS_gtlVarPath & inAttribute_target,
                                                                                  const GALGAS_lstring & inAttribute_setterName,
                                                                                  const GALGAS_gtlExpressionList & inAttribute_arguments
                                                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlSetterCallInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_target.isValid () && inAttribute_setterName.isValid () && inAttribute_arguments.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlSetterCallInstruction (inAttribute_where, inAttribute_signature, inAttribute_target, inAttribute_setterName, inAttribute_arguments COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarPath GALGAS_gtlSetterCallInstruction::getter_target (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlVarPath result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlSetterCallInstruction * p = (const cPtr_gtlSetterCallInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlSetterCallInstruction) ;
    result = p->mProperty_target ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlVarPath cPtr_gtlSetterCallInstruction::getter_target (UNUSED_LOCATION_ARGS) const {
  return mProperty_target ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring GALGAS_gtlSetterCallInstruction::getter_setterName (UNUSED_LOCATION_ARGS) const {
  GALGAS_lstring result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlSetterCallInstruction * p = (const cPtr_gtlSetterCallInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlSetterCallInstruction) ;
    result = p->mProperty_setterName ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lstring cPtr_gtlSetterCallInstruction::getter_setterName (UNUSED_LOCATION_ARGS) const {
  return mProperty_setterName ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpressionList GALGAS_gtlSetterCallInstruction::getter_arguments (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpressionList result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlSetterCallInstruction * p = (const cPtr_gtlSetterCallInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlSetterCallInstruction) ;
    result = p->mProperty_arguments ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpressionList cPtr_gtlSetterCallInstruction::getter_arguments (UNUSED_LOCATION_ARGS) const {
  return mProperty_arguments ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                  Pointer class for @gtlSetterCallInstruction class                                  *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlSetterCallInstruction::cPtr_gtlSetterCallInstruction (const GALGAS_location & in_where,
                                                              const GALGAS_string & in_signature,
                                                              const GALGAS_gtlVarPath & in_target,
                                                              const GALGAS_lstring & in_setterName,
                                                              const GALGAS_gtlExpressionList & in_arguments
                                                              COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_target (in_target),
mProperty_setterName (in_setterName),
mProperty_arguments (in_arguments) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlSetterCallInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlSetterCallInstruction ;
}

void cPtr_gtlSetterCallInstruction::description (C_String & ioString,
                                                 const int32_t inIndentation) const {
  ioString << "[@gtlSetterCallInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_target.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_setterName.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_arguments.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlSetterCallInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlSetterCallInstruction (mProperty_where, mProperty_signature, mProperty_target, mProperty_setterName, mProperty_arguments COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @gtlSetterCallInstruction type                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlSetterCallInstruction ("gtlSetterCallInstruction",
                                                 & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlSetterCallInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlSetterCallInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlSetterCallInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlSetterCallInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlSetterCallInstruction GALGAS_gtlSetterCallInstruction::extractObject (const GALGAS_object & inObject,
                                                                                C_Compiler * inCompiler
                                                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlSetterCallInstruction result ;
  const GALGAS_gtlSetterCallInstruction * p = (const GALGAS_gtlSetterCallInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlSetterCallInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlSetterCallInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                            Extension setter '@debuggerContext appendInstructionToStepDo'                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_appendInstructionToStepDo> gExtensionModifierTable_debuggerContext_appendInstructionToStepDo ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_appendInstructionToStepDo (const int32_t inClassIndex,
                                                     extensionSetterSignature_debuggerContext_appendInstructionToStepDo inModifier) {
  gExtensionModifierTable_debuggerContext_appendInstructionToStepDo.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_appendInstructionToStepDo (cPtr_debuggerContext * inObject,
                                                    GALGAS_gtlInstruction in_instruction,
                                                    C_Compiler * inCompiler
                                                    COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_appendInstructionToStepDo f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_appendInstructionToStepDo.count ()) {
      f = gExtensionModifierTable_debuggerContext_appendInstructionToStepDo (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_appendInstructionToStepDo.count ()) {
           f = gExtensionModifierTable_debuggerContext_appendInstructionToStepDo (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_appendInstructionToStepDo.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, in_instruction, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_appendInstructionToStepDo (cPtr_debuggerContext * inObject,
                                                                       GALGAS_gtlInstruction inArgument_instruction,
                                                                       C_Compiler * /* inCompiler */
                                                                       COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  object->mProperty_doList.addAssign_operation (inArgument_instruction  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 130)) ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_appendInstructionToStepDo (void) {
  enterExtensionSetter_appendInstructionToStepDo (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                                  extensionSetter_debuggerContext_appendInstructionToStepDo) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_appendInstructionToStepDo (void) {
  gExtensionModifierTable_debuggerContext_appendInstructionToStepDo.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_appendInstructionToStepDo (defineExtensionSetter_debuggerContext_appendInstructionToStepDo,
                                                                      freeExtensionModifier_debuggerContext_appendInstructionToStepDo) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                             Extension setter '@debuggerContext deleteStepDoInstruction'                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_deleteStepDoInstruction> gExtensionModifierTable_debuggerContext_deleteStepDoInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_deleteStepDoInstruction (const int32_t inClassIndex,
                                                   extensionSetterSignature_debuggerContext_deleteStepDoInstruction inModifier) {
  gExtensionModifierTable_debuggerContext_deleteStepDoInstruction.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_deleteStepDoInstruction (cPtr_debuggerContext * inObject,
                                                  const GALGAS_lbigint constin_numToDelete,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_deleteStepDoInstruction f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_deleteStepDoInstruction.count ()) {
      f = gExtensionModifierTable_debuggerContext_deleteStepDoInstruction (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_deleteStepDoInstruction.count ()) {
           f = gExtensionModifierTable_debuggerContext_deleteStepDoInstruction (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_deleteStepDoInstruction.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_numToDelete, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_deleteStepDoInstruction (cPtr_debuggerContext * inObject,
                                                                     const GALGAS_lbigint constinArgument_numToDelete,
                                                                     C_Compiler * inCompiler
                                                                     COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsInfOrEqual, constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 137)).objectCompare (GALGAS_uint::constructor_max (SOURCE_FILE ("gtl_debugger.galgas", 137)).getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 137)))).boolEnum () ;
    if (kBoolTrue == test_0) {
      GALGAS_uint var_numToDeleteUInt_5322 = constinArgument_numToDelete.getter_bigint (HERE).getter_uint (inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 138)) ;
      enumGalgasBool test_1 = kBoolTrue ;
      if (kBoolTrue == test_1) {
        test_1 = GALGAS_bool (kIsStrictInf, var_numToDeleteUInt_5322.objectCompare (object->mProperty_doList.getter_length (SOURCE_FILE ("gtl_debugger.galgas", 139)))).boolEnum () ;
        if (kBoolTrue == test_1) {
          GALGAS_gtlInstruction var_instruction_5448 ;
          {
          object->mProperty_doList.setter_removeAtIndex (var_instruction_5448, var_numToDeleteUInt_5322, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 140)) ;
          }
          inCompiler->printMessage (GALGAS_string ("Command: ")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 141)) ;
          inCompiler->printMessage (object->mProperty_instructionColor.add_operation (object->mProperty_instructionFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 142))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 142)) ;
          callExtensionMethod_display ((const cPtr_gtlInstruction *) var_instruction_5448.ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 143)) ;
          inCompiler->printMessage (object->mProperty_outputColor.add_operation (object->mProperty_outputFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 144))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 144)) ;
          inCompiler->printMessage (GALGAS_string (" deleted\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 145)) ;
        }
      }
      if (kBoolFalse == test_1) {
        inCompiler->printMessage (object->mProperty_warningColor.add_operation (object->mProperty_warningFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 147))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 147)) ;
        inCompiler->printMessage (GALGAS_string ("no do command at this index: ").add_operation (constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 148)).getter_string (SOURCE_FILE ("gtl_debugger.galgas", 148)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 148)).add_operation (GALGAS_string ("\n"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 148))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 148)) ;
      }
    }
  }
  if (kBoolFalse == test_0) {
    inCompiler->printMessage (object->mProperty_warningColor.add_operation (object->mProperty_warningFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 151))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 151)) ;
    inCompiler->printMessage (GALGAS_string ("no do command at this index: ").add_operation (constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 152)).getter_string (SOURCE_FILE ("gtl_debugger.galgas", 152)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 152)).add_operation (GALGAS_string ("\n"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 152))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 152)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_deleteStepDoInstruction (void) {
  enterExtensionSetter_deleteStepDoInstruction (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                                extensionSetter_debuggerContext_deleteStepDoInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_deleteStepDoInstruction (void) {
  gExtensionModifierTable_debuggerContext_deleteStepDoInstruction.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_deleteStepDoInstruction (defineExtensionSetter_debuggerContext_deleteStepDoInstruction,
                                                                    freeExtensionModifier_debuggerContext_deleteStepDoInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                           Extension setter '@debuggerContext deleteAllStepDoInstructions'                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_deleteAllStepDoInstructions> gExtensionModifierTable_debuggerContext_deleteAllStepDoInstructions ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_deleteAllStepDoInstructions (const int32_t inClassIndex,
                                                       extensionSetterSignature_debuggerContext_deleteAllStepDoInstructions inModifier) {
  gExtensionModifierTable_debuggerContext_deleteAllStepDoInstructions.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_deleteAllStepDoInstructions (cPtr_debuggerContext * inObject,
                                                      C_Compiler * inCompiler
                                                      COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_deleteAllStepDoInstructions f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_deleteAllStepDoInstructions.count ()) {
      f = gExtensionModifierTable_debuggerContext_deleteAllStepDoInstructions (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_deleteAllStepDoInstructions.count ()) {
           f = gExtensionModifierTable_debuggerContext_deleteAllStepDoInstructions (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_deleteAllStepDoInstructions.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_deleteAllStepDoInstructions (cPtr_debuggerContext * inObject,
                                                                         C_Compiler * /* inCompiler */
                                                                         COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  object->mProperty_doList = GALGAS_gtlInstructionList::constructor_emptyList (SOURCE_FILE ("gtl_debugger.galgas", 159)) ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_deleteAllStepDoInstructions (void) {
  enterExtensionSetter_deleteAllStepDoInstructions (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                                    extensionSetter_debuggerContext_deleteAllStepDoInstructions) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_deleteAllStepDoInstructions (void) {
  gExtensionModifierTable_debuggerContext_deleteAllStepDoInstructions.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_deleteAllStepDoInstructions (defineExtensionSetter_debuggerContext_deleteAllStepDoInstructions,
                                                                        freeExtensionModifier_debuggerContext_deleteAllStepDoInstructions) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                             Extension method '@debuggerContext listStepDoInstructions'                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_debuggerContext_listStepDoInstructions> gExtensionMethodTable_debuggerContext_listStepDoInstructions ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_listStepDoInstructions (const int32_t inClassIndex,
                                                  extensionMethodSignature_debuggerContext_listStepDoInstructions inMethod) {
  gExtensionMethodTable_debuggerContext_listStepDoInstructions.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_listStepDoInstructions (const cPtr_debuggerContext * inObject,
                                                 C_Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_debuggerContext_listStepDoInstructions f = NULL ;
    if (classIndex < gExtensionMethodTable_debuggerContext_listStepDoInstructions.count ()) {
      f = gExtensionMethodTable_debuggerContext_listStepDoInstructions (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_debuggerContext_listStepDoInstructions.count ()) {
           f = gExtensionMethodTable_debuggerContext_listStepDoInstructions (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_debuggerContext_listStepDoInstructions.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_debuggerContext_listStepDoInstructions (const cPtr_debuggerContext * inObject,
                                                                    C_Compiler * inCompiler
                                                                    COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsStrictSup, object->mProperty_doList.getter_length (SOURCE_FILE ("gtl_debugger.galgas", 165)).objectCompare (GALGAS_uint ((uint32_t) 0U))).boolEnum () ;
    if (kBoolTrue == test_0) {
      inCompiler->printMessage (GALGAS_string ("Step do commands:\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 166)) ;
      cEnumerator_gtlInstructionList enumerator_6282 (object->mProperty_doList, kENUMERATION_UP) ;
      GALGAS_uint index_6258 ((uint32_t) 0) ;
      while (enumerator_6282.hasCurrentObject ()) {
        inCompiler->printMessage (index_6258.getter_string (SOURCE_FILE ("gtl_debugger.galgas", 168)).getter_stringByLeftPadding (GALGAS_uint ((uint32_t) 4U), GALGAS_char (TO_UNICODE (32)) COMMA_SOURCE_FILE ("gtl_debugger.galgas", 168)).add_operation (GALGAS_string (": "), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 168))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 168)) ;
        inCompiler->printMessage (object->mProperty_instructionColor.add_operation (object->mProperty_instructionFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 169))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 169)) ;
        callExtensionMethod_display ((const cPtr_gtlInstruction *) enumerator_6282.current_instruction (HERE).ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 170)) ;
        inCompiler->printMessage (GALGAS_string ("\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 171)) ;
        inCompiler->printMessage (object->mProperty_outputColor.add_operation (object->mProperty_outputFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 172))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 172)) ;
        enumerator_6282.gotoNextObject () ;
        index_6258.increment_operation (inCompiler  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 167)) ;
      }
    }
  }
  if (kBoolFalse == test_0) {
    inCompiler->printMessage (GALGAS_string ("No step do commands\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 175)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_debuggerContext_listStepDoInstructions (void) {
  enterExtensionMethod_listStepDoInstructions (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                               extensionMethod_debuggerContext_listStepDoInstructions) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_debuggerContext_listStepDoInstructions (void) {
  gExtensionMethodTable_debuggerContext_listStepDoInstructions.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_debuggerContext_listStepDoInstructions (defineExtensionMethod_debuggerContext_listStepDoInstructions,
                                                                   freeExtensionMethod_debuggerContext_listStepDoInstructions) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Extension setter '@debuggerContext setBreakpoint'                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_setBreakpoint> gExtensionModifierTable_debuggerContext_setBreakpoint ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_setBreakpoint (const int32_t inClassIndex,
                                         extensionSetterSignature_debuggerContext_setBreakpoint inModifier) {
  gExtensionModifierTable_debuggerContext_setBreakpoint.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_setBreakpoint (cPtr_debuggerContext * inObject,
                                        const GALGAS_string constin_fileName,
                                        const GALGAS_uint constin_lineNum,
                                        C_Compiler * inCompiler
                                        COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_setBreakpoint f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_setBreakpoint.count ()) {
      f = gExtensionModifierTable_debuggerContext_setBreakpoint (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_setBreakpoint.count ()) {
           f = gExtensionModifierTable_debuggerContext_setBreakpoint (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_setBreakpoint.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_fileName, constin_lineNum, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_setBreakpoint (cPtr_debuggerContext * inObject,
                                                           const GALGAS_string constinArgument_fileName,
                                                           const GALGAS_uint constinArgument_lineNum,
                                                           C_Compiler * inCompiler
                                                           COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  GALGAS_string var_signature_6741 = constinArgument_fileName.add_operation (GALGAS_string (":"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 184)).add_operation (constinArgument_lineNum.getter_string (SOURCE_FILE ("gtl_debugger.galgas", 184)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 184)).getter_md_35_ (SOURCE_FILE ("gtl_debugger.galgas", 184)) ;
  GALGAS_bool var_notThere_6791 = GALGAS_bool (true) ;
  cEnumerator_gtlBreakpointList enumerator_6824 (object->mProperty_breakpoints, kENUMERATION_UP) ;
  while (enumerator_6824.hasCurrentObject ()) {
    enumGalgasBool test_0 = kBoolTrue ;
    if (kBoolTrue == test_0) {
      test_0 = GALGAS_bool (kIsEqual, enumerator_6824.current_breakpoint (HERE).getter_signature (SOURCE_FILE ("gtl_debugger.galgas", 187)).objectCompare (var_signature_6741)).boolEnum () ;
      if (kBoolTrue == test_0) {
        var_notThere_6791 = GALGAS_bool (false) ;
      }
    }
    enumerator_6824.gotoNextObject () ;
  }
  enumGalgasBool test_1 = kBoolTrue ;
  if (kBoolTrue == test_1) {
    test_1 = var_notThere_6791.boolEnum () ;
    if (kBoolTrue == test_1) {
      object->mProperty_breakpoints.addAssign_operation (GALGAS_gtlBreakpoint::constructor_new (constinArgument_fileName, constinArgument_lineNum, var_signature_6741  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 192))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 192)) ;
    }
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_setBreakpoint (void) {
  enterExtensionSetter_setBreakpoint (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                      extensionSetter_debuggerContext_setBreakpoint) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_setBreakpoint (void) {
  gExtensionModifierTable_debuggerContext_setBreakpoint.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_setBreakpoint (defineExtensionSetter_debuggerContext_setBreakpoint,
                                                          freeExtensionModifier_debuggerContext_setBreakpoint) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                 Extension method '@debuggerContext listBreakpoints'                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_debuggerContext_listBreakpoints> gExtensionMethodTable_debuggerContext_listBreakpoints ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_listBreakpoints (const int32_t inClassIndex,
                                           extensionMethodSignature_debuggerContext_listBreakpoints inMethod) {
  gExtensionMethodTable_debuggerContext_listBreakpoints.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_listBreakpoints (const cPtr_debuggerContext * inObject,
                                          C_Compiler * inCompiler
                                          COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_debuggerContext_listBreakpoints f = NULL ;
    if (classIndex < gExtensionMethodTable_debuggerContext_listBreakpoints.count ()) {
      f = gExtensionMethodTable_debuggerContext_listBreakpoints (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_debuggerContext_listBreakpoints.count ()) {
           f = gExtensionMethodTable_debuggerContext_listBreakpoints (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_debuggerContext_listBreakpoints.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_debuggerContext_listBreakpoints (const cPtr_debuggerContext * inObject,
                                                             C_Compiler * inCompiler
                                                             COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsStrictSup, object->mProperty_breakpoints.getter_length (SOURCE_FILE ("gtl_debugger.galgas", 199)).objectCompare (GALGAS_uint ((uint32_t) 0U))).boolEnum () ;
    if (kBoolTrue == test_0) {
      inCompiler->printMessage (GALGAS_string ("Breakpoints:\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 200)) ;
      cEnumerator_gtlBreakpointList enumerator_7224 (object->mProperty_breakpoints, kENUMERATION_UP) ;
      GALGAS_uint index_7204 ((uint32_t) 0) ;
      while (enumerator_7224.hasCurrentObject ()) {
        inCompiler->printMessage (index_7204.getter_string (SOURCE_FILE ("gtl_debugger.galgas", 202)).getter_stringByLeftPadding (GALGAS_uint ((uint32_t) 4U), GALGAS_char (TO_UNICODE (32)) COMMA_SOURCE_FILE ("gtl_debugger.galgas", 202)).add_operation (GALGAS_string (": "), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 202))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 202)) ;
        inCompiler->printMessage (object->mProperty_instructionColor.add_operation (object->mProperty_instructionFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 203))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 203)) ;
        inCompiler->printMessage (enumerator_7224.current_breakpoint (HERE).getter_fileName (SOURCE_FILE ("gtl_debugger.galgas", 204)).add_operation (GALGAS_string (":"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 204)).add_operation (enumerator_7224.current_breakpoint (HERE).getter_lineNum (SOURCE_FILE ("gtl_debugger.galgas", 204)).getter_string (SOURCE_FILE ("gtl_debugger.galgas", 204)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 204))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 204)) ;
        inCompiler->printMessage (GALGAS_string ("\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 205)) ;
        inCompiler->printMessage (object->mProperty_outputColor.add_operation (object->mProperty_outputFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 206))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 206)) ;
        enumerator_7224.gotoNextObject () ;
        index_7204.increment_operation (inCompiler  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 201)) ;
      }
    }
  }
  if (kBoolFalse == test_0) {
    inCompiler->printMessage (GALGAS_string ("No breakpoint\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 209)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_debuggerContext_listBreakpoints (void) {
  enterExtensionMethod_listBreakpoints (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                        extensionMethod_debuggerContext_listBreakpoints) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_debuggerContext_listBreakpoints (void) {
  gExtensionMethodTable_debuggerContext_listBreakpoints.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_debuggerContext_listBreakpoints (defineExtensionMethod_debuggerContext_listBreakpoints,
                                                            freeExtensionMethod_debuggerContext_listBreakpoints) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                Extension setter '@debuggerContext deleteBreakpoint'                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_deleteBreakpoint> gExtensionModifierTable_debuggerContext_deleteBreakpoint ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_deleteBreakpoint (const int32_t inClassIndex,
                                            extensionSetterSignature_debuggerContext_deleteBreakpoint inModifier) {
  gExtensionModifierTable_debuggerContext_deleteBreakpoint.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_deleteBreakpoint (cPtr_debuggerContext * inObject,
                                           const GALGAS_lbigint constin_numToDelete,
                                           C_Compiler * inCompiler
                                           COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_deleteBreakpoint f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_deleteBreakpoint.count ()) {
      f = gExtensionModifierTable_debuggerContext_deleteBreakpoint (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_deleteBreakpoint.count ()) {
           f = gExtensionModifierTable_debuggerContext_deleteBreakpoint (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_deleteBreakpoint.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_numToDelete, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_deleteBreakpoint (cPtr_debuggerContext * inObject,
                                                              const GALGAS_lbigint constinArgument_numToDelete,
                                                              C_Compiler * inCompiler
                                                              COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsInfOrEqual, constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 217)).objectCompare (GALGAS_uint::constructor_max (SOURCE_FILE ("gtl_debugger.galgas", 217)).getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 217)))).boolEnum () ;
    if (kBoolTrue == test_0) {
      GALGAS_uint var_numToDeleteUInt_7767 = constinArgument_numToDelete.getter_bigint (HERE).getter_uint (inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 218)) ;
      enumGalgasBool test_1 = kBoolTrue ;
      if (kBoolTrue == test_1) {
        test_1 = GALGAS_bool (kIsStrictInf, var_numToDeleteUInt_7767.objectCompare (object->mProperty_breakpoints.getter_length (SOURCE_FILE ("gtl_debugger.galgas", 219)))).boolEnum () ;
        if (kBoolTrue == test_1) {
          GALGAS_gtlBreakpoint var_bp_7893 ;
          {
          object->mProperty_breakpoints.setter_removeAtIndex (var_bp_7893, var_numToDeleteUInt_7767, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 220)) ;
          }
          inCompiler->printMessage (GALGAS_string ("Breakpoint: ")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 221)) ;
          inCompiler->printMessage (object->mProperty_instructionColor.add_operation (object->mProperty_instructionFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 222))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 222)) ;
          inCompiler->printMessage (var_bp_7893.getter_fileName (SOURCE_FILE ("gtl_debugger.galgas", 223)).add_operation (GALGAS_string (":"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 223)).add_operation (var_bp_7893.getter_lineNum (SOURCE_FILE ("gtl_debugger.galgas", 223)).getter_string (SOURCE_FILE ("gtl_debugger.galgas", 223)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 223))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 223)) ;
          inCompiler->printMessage (object->mProperty_outputColor.add_operation (object->mProperty_outputFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 224))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 224)) ;
          inCompiler->printMessage (GALGAS_string (" deleted\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 225)) ;
        }
      }
      if (kBoolFalse == test_1) {
        inCompiler->printMessage (object->mProperty_warningColor.add_operation (object->mProperty_warningFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 227))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 227)) ;
        inCompiler->printMessage (GALGAS_string ("no breakpoint at this index: ").add_operation (constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 228)).getter_string (SOURCE_FILE ("gtl_debugger.galgas", 228)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 228)).add_operation (GALGAS_string ("\n"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 228))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 228)) ;
      }
    }
  }
  if (kBoolFalse == test_0) {
    inCompiler->printMessage (object->mProperty_warningColor.add_operation (object->mProperty_warningFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 231))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 231)) ;
    inCompiler->printMessage (GALGAS_string ("no breakpoint at this index: ").add_operation (constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 232)).getter_string (SOURCE_FILE ("gtl_debugger.galgas", 232)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 232)).add_operation (GALGAS_string ("\n"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 232))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 232)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_deleteBreakpoint (void) {
  enterExtensionSetter_deleteBreakpoint (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                         extensionSetter_debuggerContext_deleteBreakpoint) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_deleteBreakpoint (void) {
  gExtensionModifierTable_debuggerContext_deleteBreakpoint.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_deleteBreakpoint (defineExtensionSetter_debuggerContext_deleteBreakpoint,
                                                             freeExtensionModifier_debuggerContext_deleteBreakpoint) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                              Extension setter '@debuggerContext deleteAllBreakpoints'                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_deleteAllBreakpoints> gExtensionModifierTable_debuggerContext_deleteAllBreakpoints ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_deleteAllBreakpoints (const int32_t inClassIndex,
                                                extensionSetterSignature_debuggerContext_deleteAllBreakpoints inModifier) {
  gExtensionModifierTable_debuggerContext_deleteAllBreakpoints.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_deleteAllBreakpoints (cPtr_debuggerContext * inObject,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_deleteAllBreakpoints f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_deleteAllBreakpoints.count ()) {
      f = gExtensionModifierTable_debuggerContext_deleteAllBreakpoints (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_deleteAllBreakpoints.count ()) {
           f = gExtensionModifierTable_debuggerContext_deleteAllBreakpoints (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_deleteAllBreakpoints.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_deleteAllBreakpoints (cPtr_debuggerContext * inObject,
                                                                  C_Compiler * /* inCompiler */
                                                                  COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  object->mProperty_breakpoints = GALGAS_gtlBreakpointList::constructor_emptyList (SOURCE_FILE ("gtl_debugger.galgas", 239)) ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_deleteAllBreakpoints (void) {
  enterExtensionSetter_deleteAllBreakpoints (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                             extensionSetter_debuggerContext_deleteAllBreakpoints) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_deleteAllBreakpoints (void) {
  gExtensionModifierTable_debuggerContext_deleteAllBreakpoints.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_deleteAllBreakpoints (defineExtensionSetter_debuggerContext_deleteAllBreakpoints,
                                                                 freeExtensionModifier_debuggerContext_deleteAllBreakpoints) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Extension setter '@debuggerContext setWatchpoint'                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_setWatchpoint> gExtensionModifierTable_debuggerContext_setWatchpoint ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_setWatchpoint (const int32_t inClassIndex,
                                         extensionSetterSignature_debuggerContext_setWatchpoint inModifier) {
  gExtensionModifierTable_debuggerContext_setWatchpoint.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_setWatchpoint (cPtr_debuggerContext * inObject,
                                        const GALGAS_gtlExpression constin_watchExpression,
                                        C_Compiler * inCompiler
                                        COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_setWatchpoint f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_setWatchpoint.count ()) {
      f = gExtensionModifierTable_debuggerContext_setWatchpoint (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_setWatchpoint.count ()) {
           f = gExtensionModifierTable_debuggerContext_setWatchpoint (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_setWatchpoint.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_watchExpression, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_setWatchpoint (cPtr_debuggerContext * inObject,
                                                           const GALGAS_gtlExpression constinArgument_watchExpression,
                                                           C_Compiler * /* inCompiler */
                                                           COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  object->mProperty_watchpoints.addAssign_operation (constinArgument_watchExpression  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 246)) ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_setWatchpoint (void) {
  enterExtensionSetter_setWatchpoint (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                      extensionSetter_debuggerContext_setWatchpoint) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_setWatchpoint (void) {
  gExtensionModifierTable_debuggerContext_setWatchpoint.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_setWatchpoint (defineExtensionSetter_debuggerContext_setWatchpoint,
                                                          freeExtensionModifier_debuggerContext_setWatchpoint) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                 Extension method '@debuggerContext listWatchpoints'                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_debuggerContext_listWatchpoints> gExtensionMethodTable_debuggerContext_listWatchpoints ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_listWatchpoints (const int32_t inClassIndex,
                                           extensionMethodSignature_debuggerContext_listWatchpoints inMethod) {
  gExtensionMethodTable_debuggerContext_listWatchpoints.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_listWatchpoints (const cPtr_debuggerContext * inObject,
                                          C_Compiler * inCompiler
                                          COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_debuggerContext_listWatchpoints f = NULL ;
    if (classIndex < gExtensionMethodTable_debuggerContext_listWatchpoints.count ()) {
      f = gExtensionMethodTable_debuggerContext_listWatchpoints (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_debuggerContext_listWatchpoints.count ()) {
           f = gExtensionMethodTable_debuggerContext_listWatchpoints (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_debuggerContext_listWatchpoints.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_debuggerContext_listWatchpoints (const cPtr_debuggerContext * inObject,
                                                             C_Compiler * inCompiler
                                                             COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsStrictSup, object->mProperty_watchpoints.getter_length (SOURCE_FILE ("gtl_debugger.galgas", 252)).objectCompare (GALGAS_uint ((uint32_t) 0U))).boolEnum () ;
    if (kBoolTrue == test_0) {
      inCompiler->printMessage (GALGAS_string ("Watchpoints:\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 253)) ;
      cEnumerator_gtlExpressionList enumerator_8933 (object->mProperty_watchpoints, kENUMERATION_UP) ;
      GALGAS_uint index_8913 ((uint32_t) 0) ;
      while (enumerator_8933.hasCurrentObject ()) {
        inCompiler->printMessage (index_8913.getter_string (SOURCE_FILE ("gtl_debugger.galgas", 255)).getter_stringByLeftPadding (GALGAS_uint ((uint32_t) 4U), GALGAS_char (TO_UNICODE (32)) COMMA_SOURCE_FILE ("gtl_debugger.galgas", 255)).add_operation (GALGAS_string (": "), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 255))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 255)) ;
        inCompiler->printMessage (object->mProperty_instructionColor.add_operation (object->mProperty_instructionFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 256))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 256)) ;
        inCompiler->printMessage (callExtensionGetter_stringRepresentation ((const cPtr_gtlExpression *) enumerator_8933.current_expression (HERE).ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 257))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 257)) ;
        inCompiler->printMessage (GALGAS_string ("\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 258)) ;
        inCompiler->printMessage (object->mProperty_outputColor.add_operation (object->mProperty_outputFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 259))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 259)) ;
        enumerator_8933.gotoNextObject () ;
        index_8913.increment_operation (inCompiler  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 254)) ;
      }
    }
  }
  if (kBoolFalse == test_0) {
    inCompiler->printMessage (GALGAS_string ("No Watchpoint\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 262)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_debuggerContext_listWatchpoints (void) {
  enterExtensionMethod_listWatchpoints (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                        extensionMethod_debuggerContext_listWatchpoints) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_debuggerContext_listWatchpoints (void) {
  gExtensionMethodTable_debuggerContext_listWatchpoints.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_debuggerContext_listWatchpoints (defineExtensionMethod_debuggerContext_listWatchpoints,
                                                            freeExtensionMethod_debuggerContext_listWatchpoints) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                Extension setter '@debuggerContext deleteWatchpoint'                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_deleteWatchpoint> gExtensionModifierTable_debuggerContext_deleteWatchpoint ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_deleteWatchpoint (const int32_t inClassIndex,
                                            extensionSetterSignature_debuggerContext_deleteWatchpoint inModifier) {
  gExtensionModifierTable_debuggerContext_deleteWatchpoint.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_deleteWatchpoint (cPtr_debuggerContext * inObject,
                                           const GALGAS_lbigint constin_numToDelete,
                                           C_Compiler * inCompiler
                                           COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_deleteWatchpoint f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_deleteWatchpoint.count ()) {
      f = gExtensionModifierTable_debuggerContext_deleteWatchpoint (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_deleteWatchpoint.count ()) {
           f = gExtensionModifierTable_debuggerContext_deleteWatchpoint (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_deleteWatchpoint.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_numToDelete, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_deleteWatchpoint (cPtr_debuggerContext * inObject,
                                                              const GALGAS_lbigint constinArgument_numToDelete,
                                                              C_Compiler * inCompiler
                                                              COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  enumGalgasBool test_0 = kBoolTrue ;
  if (kBoolTrue == test_0) {
    test_0 = GALGAS_bool (kIsInfOrEqual, constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 270)).objectCompare (GALGAS_uint::constructor_max (SOURCE_FILE ("gtl_debugger.galgas", 270)).getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 270)))).boolEnum () ;
    if (kBoolTrue == test_0) {
      GALGAS_uint var_numToDeleteUInt_9443 = constinArgument_numToDelete.getter_bigint (HERE).getter_uint (inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 271)) ;
      enumGalgasBool test_1 = kBoolTrue ;
      if (kBoolTrue == test_1) {
        test_1 = GALGAS_bool (kIsStrictInf, var_numToDeleteUInt_9443.objectCompare (object->mProperty_watchpoints.getter_length (SOURCE_FILE ("gtl_debugger.galgas", 272)))).boolEnum () ;
        if (kBoolTrue == test_1) {
          GALGAS_gtlExpression var_wp_9569 ;
          {
          object->mProperty_watchpoints.setter_removeAtIndex (var_wp_9569, var_numToDeleteUInt_9443, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 273)) ;
          }
          inCompiler->printMessage (GALGAS_string ("Watchpoint: ")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 274)) ;
          inCompiler->printMessage (object->mProperty_instructionColor.add_operation (object->mProperty_instructionFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 275))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 275)) ;
          inCompiler->printMessage (callExtensionGetter_stringRepresentation ((const cPtr_gtlExpression *) var_wp_9569.ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 276))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 276)) ;
          inCompiler->printMessage (object->mProperty_outputColor.add_operation (object->mProperty_outputFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 277))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 277)) ;
          inCompiler->printMessage (GALGAS_string (" deleted\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 278)) ;
        }
      }
      if (kBoolFalse == test_1) {
        inCompiler->printMessage (object->mProperty_warningColor.add_operation (object->mProperty_warningFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 280))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 280)) ;
        inCompiler->printMessage (GALGAS_string ("no watchpoint at this index: ").add_operation (constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 281)).getter_string (SOURCE_FILE ("gtl_debugger.galgas", 281)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 281)).add_operation (GALGAS_string ("\n"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 281))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 281)) ;
      }
    }
  }
  if (kBoolFalse == test_0) {
    inCompiler->printMessage (object->mProperty_warningColor.add_operation (object->mProperty_warningFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 284))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 284)) ;
    inCompiler->printMessage (GALGAS_string ("no watchpoint at this index: ").add_operation (constinArgument_numToDelete.getter_bigint (SOURCE_FILE ("gtl_debugger.galgas", 285)).getter_string (SOURCE_FILE ("gtl_debugger.galgas", 285)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 285)).add_operation (GALGAS_string ("\n"), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 285))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 285)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_deleteWatchpoint (void) {
  enterExtensionSetter_deleteWatchpoint (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                         extensionSetter_debuggerContext_deleteWatchpoint) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_deleteWatchpoint (void) {
  gExtensionModifierTable_debuggerContext_deleteWatchpoint.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_deleteWatchpoint (defineExtensionSetter_debuggerContext_deleteWatchpoint,
                                                             freeExtensionModifier_debuggerContext_deleteWatchpoint) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                              Extension setter '@debuggerContext deleteAllWatchpoints'                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_deleteAllWatchpoints> gExtensionModifierTable_debuggerContext_deleteAllWatchpoints ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_deleteAllWatchpoints (const int32_t inClassIndex,
                                                extensionSetterSignature_debuggerContext_deleteAllWatchpoints inModifier) {
  gExtensionModifierTable_debuggerContext_deleteAllWatchpoints.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_deleteAllWatchpoints (cPtr_debuggerContext * inObject,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_deleteAllWatchpoints f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_deleteAllWatchpoints.count ()) {
      f = gExtensionModifierTable_debuggerContext_deleteAllWatchpoints (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_deleteAllWatchpoints.count ()) {
           f = gExtensionModifierTable_debuggerContext_deleteAllWatchpoints (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_deleteAllWatchpoints.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_deleteAllWatchpoints (cPtr_debuggerContext * inObject,
                                                                  C_Compiler * /* inCompiler */
                                                                  COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  object->mProperty_watchpoints = GALGAS_gtlExpressionList::constructor_emptyList (SOURCE_FILE ("gtl_debugger.galgas", 292)) ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_deleteAllWatchpoints (void) {
  enterExtensionSetter_deleteAllWatchpoints (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                             extensionSetter_debuggerContext_deleteAllWatchpoints) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_deleteAllWatchpoints (void) {
  gExtensionModifierTable_debuggerContext_deleteAllWatchpoints.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_deleteAllWatchpoints (defineExtensionSetter_debuggerContext_deleteAllWatchpoints,
                                                                 freeExtensionModifier_debuggerContext_deleteAllWatchpoints) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Extension getter '@debuggerContext breakOn'                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_debuggerContext_breakOn> gExtensionGetterTable_debuggerContext_breakOn ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_breakOn (const int32_t inClassIndex,
                                   enterExtensionGetter_debuggerContext_breakOn inGetter) {
  gExtensionGetterTable_debuggerContext_breakOn.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool callExtensionGetter_breakOn (const cPtr_debuggerContext * inObject,
                                         const GALGAS_gtlInstruction in_instruction,
                                         C_Compiler * inCompiler
                                         COMMA_LOCATION_ARGS) {
  GALGAS_bool result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_debuggerContext_breakOn f = NULL ;
    if (classIndex < gExtensionGetterTable_debuggerContext_breakOn.count ()) {
      f = gExtensionGetterTable_debuggerContext_breakOn (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_debuggerContext_breakOn.count ()) {
           f = gExtensionGetterTable_debuggerContext_breakOn (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_debuggerContext_breakOn.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, in_instruction, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static GALGAS_bool extensionGetter_debuggerContext_breakOn (const cPtr_debuggerContext * inObject,
                                                            const GALGAS_gtlInstruction constinArgument_instruction,
                                                            C_Compiler * /* inCompiler */
                                                            COMMA_UNUSED_LOCATION_ARGS) {
  GALGAS_bool result_breakOn ; // Returned variable
  const cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  result_breakOn = GALGAS_bool (false) ;
  cEnumerator_gtlBreakpointList enumerator_10402 (object->mProperty_breakpoints, kENUMERATION_UP) ;
  while (enumerator_10402.hasCurrentObject ()) {
    enumGalgasBool test_0 = kBoolTrue ;
    if (kBoolTrue == test_0) {
      test_0 = GALGAS_bool (kIsEqual, constinArgument_instruction.getter_signature (SOURCE_FILE ("gtl_debugger.galgas", 302)).objectCompare (enumerator_10402.current_breakpoint (HERE).getter_signature (SOURCE_FILE ("gtl_debugger.galgas", 302)))).boolEnum () ;
      if (kBoolTrue == test_0) {
        result_breakOn = GALGAS_bool (true) ;
      }
    }
    enumerator_10402.gotoNextObject () ;
  }
//---
  return result_breakOn ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionGetter_debuggerContext_breakOn (void) {
  enterExtensionGetter_breakOn (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                extensionGetter_debuggerContext_breakOn) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_debuggerContext_breakOn (void) {
  gExtensionGetterTable_debuggerContext_breakOn.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_debuggerContext_breakOn (defineExtensionGetter_debuggerContext_breakOn,
                                                    freeExtensionGetter_debuggerContext_breakOn) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Extension getter '@debuggerContext watchOn'                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_debuggerContext_watchOn> gExtensionGetterTable_debuggerContext_watchOn ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_watchOn (const int32_t inClassIndex,
                                   enterExtensionGetter_debuggerContext_watchOn inGetter) {
  gExtensionGetterTable_debuggerContext_watchOn.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_bool callExtensionGetter_watchOn (const cPtr_debuggerContext * inObject,
                                         const GALGAS_gtlContext in_context,
                                         const GALGAS_gtlData in_vars,
                                         const GALGAS_library in_lib,
                                         C_Compiler * inCompiler
                                         COMMA_LOCATION_ARGS) {
  GALGAS_bool result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_debuggerContext_watchOn f = NULL ;
    if (classIndex < gExtensionGetterTable_debuggerContext_watchOn.count ()) {
      f = gExtensionGetterTable_debuggerContext_watchOn (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_debuggerContext_watchOn.count ()) {
           f = gExtensionGetterTable_debuggerContext_watchOn (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_debuggerContext_watchOn.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, in_context, in_vars, in_lib, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static GALGAS_bool extensionGetter_debuggerContext_watchOn (const cPtr_debuggerContext * inObject,
                                                            const GALGAS_gtlContext constinArgument_context,
                                                            const GALGAS_gtlData constinArgument_vars,
                                                            const GALGAS_library constinArgument_lib,
                                                            C_Compiler * inCompiler
                                                            COMMA_UNUSED_LOCATION_ARGS) {
  GALGAS_bool result_watchOn ; // Returned variable
  const cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  result_watchOn = GALGAS_bool (false) ;
  cEnumerator_gtlExpressionList enumerator_10747 (object->mProperty_watchpoints, kENUMERATION_UP) ;
  while (enumerator_10747.hasCurrentObject ()) {
    GALGAS_gtlData var_watchResult_10775 = callExtensionGetter_eval ((const cPtr_gtlExpression *) enumerator_10747.current_expression (HERE).ptr (), constinArgument_context, constinArgument_vars, constinArgument_lib, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 317)) ;
    enumGalgasBool test_0 = kBoolTrue ;
    if (kBoolTrue == test_0) {
      test_0 = GALGAS_bool (var_watchResult_10775.dynamicTypeDescriptor () == & kTypeDescriptor_GALGAS_gtlBool).boolEnum () ;
      if (kBoolTrue == test_0) {
        GALGAS_gtlBool temp_1 ;
        if (var_watchResult_10775.isValid ()) {
          if (NULL != dynamic_cast <const cPtr_gtlBool *> (var_watchResult_10775.ptr ())) {
            temp_1 = (cPtr_gtlBool *) var_watchResult_10775.ptr () ;
          }else{
            inCompiler->castError ("gtlBool", var_watchResult_10775.ptr ()->classDescriptor () COMMA_SOURCE_FILE ("gtl_debugger.galgas", 319)) ;
          }
        }
        GALGAS_bool var_matchWatch_10869 = temp_1.getter_value (SOURCE_FILE ("gtl_debugger.galgas", 319)) ;
        enumGalgasBool test_2 = kBoolTrue ;
        if (kBoolTrue == test_2) {
          test_2 = var_matchWatch_10869.boolEnum () ;
          if (kBoolTrue == test_2) {
            inCompiler->printMessage (object->mProperty_outputColor.add_operation (object->mProperty_outputFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 321))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 321)) ;
            inCompiler->printMessage (GALGAS_string ("match ")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 322)) ;
            inCompiler->printMessage (object->mProperty_instructionColor.add_operation (object->mProperty_instructionFace, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 323))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 323)) ;
            inCompiler->printMessage (callExtensionGetter_stringRepresentation ((const cPtr_gtlExpression *) enumerator_10747.current_expression (HERE).ptr (), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 324))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 324)) ;
            inCompiler->printMessage (GALGAS_string ("\n")  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 325)) ;
            inCompiler->printMessage (function_endc (inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 326))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 326)) ;
            result_watchOn = GALGAS_bool (true) ;
          }
        }
      }
    }
    enumerator_10747.gotoNextObject () ;
  }
//---
  return result_watchOn ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionGetter_debuggerContext_watchOn (void) {
  enterExtensionGetter_watchOn (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                extensionGetter_debuggerContext_watchOn) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_debuggerContext_watchOn (void) {
  gExtensionGetterTable_debuggerContext_watchOn.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_debuggerContext_watchOn (defineExtensionGetter_debuggerContext_watchOn,
                                                    freeExtensionGetter_debuggerContext_watchOn) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Extension method '@debuggerContext hereWeAre'                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionMethodSignature_debuggerContext_hereWeAre> gExtensionMethodTable_debuggerContext_hereWeAre ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_hereWeAre (const int32_t inClassIndex,
                                     extensionMethodSignature_debuggerContext_hereWeAre inMethod) {
  gExtensionMethodTable_debuggerContext_hereWeAre.forceObjectAtIndex (inClassIndex, inMethod, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_hereWeAre (const cPtr_debuggerContext * inObject,
                                    const GALGAS_uint constin_window,
                                    C_Compiler * inCompiler
                                    COMMA_LOCATION_ARGS) {
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionMethodSignature_debuggerContext_hereWeAre f = NULL ;
    if (classIndex < gExtensionMethodTable_debuggerContext_hereWeAre.count ()) {
      f = gExtensionMethodTable_debuggerContext_hereWeAre (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionMethodTable_debuggerContext_hereWeAre.count ()) {
           f = gExtensionMethodTable_debuggerContext_hereWeAre (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionMethodTable_debuggerContext_hereWeAre.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY METHOD CALL ERROR", __FILE__, __LINE__) ;
    }else{
      f (inObject, constin_window, inCompiler COMMA_THERE) ;
    }
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionMethod_debuggerContext_hereWeAre (const cPtr_debuggerContext * inObject,
                                                       const GALGAS_uint constinArgument_window,
                                                       C_Compiler * inCompiler
                                                       COMMA_UNUSED_LOCATION_ARGS) {
  const cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  GALGAS_uint var_indentation_11338 = GALGAS_uint ((uint32_t) 0U) ;
  cEnumerator_gtlInstructionListContextStack enumerator_11409 (object->mProperty_contextStack.getter_subListFromIndex (GALGAS_uint ((uint32_t) 1U), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 338)), kENUMERATION_UP) ;
  while (enumerator_11409.hasCurrentObject ()) {
    inCompiler->printMessage (GALGAS_string::constructor_stringWithSequenceOfCharacters (GALGAS_char (TO_UNICODE (32)), var_indentation_11338  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 339))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 339)) ;
    const GALGAS_debuggerContext temp_0 = object ;
    callExtensionMethod_displayWithLocation ((const cPtr_gtlInstruction *) enumerator_11409.current_instructionList (HERE).getter_instructionAtIndex (enumerator_11409.current_nextInstructionIndex (HERE), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 340)).ptr (), temp_0, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 340)) ;
    var_indentation_11338 = var_indentation_11338.add_operation (GALGAS_uint ((uint32_t) 4U), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 341)) ;
    enumerator_11409.gotoNextObject () ;
  }
  GALGAS_string var_identationString_11627 = GALGAS_string::constructor_stringWithSequenceOfCharacters (GALGAS_char (TO_UNICODE (32)), var_indentation_11338  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 344)) ;
  GALGAS_uint var_startIndex_11701 ;
  GALGAS_uint var_displayLength_11723 ;
  enumGalgasBool test_1 = kBoolTrue ;
  if (kBoolTrue == test_1) {
    test_1 = GALGAS_bool (kIsSupOrEqual, object->mProperty_nextInstructionIndex.objectCompare (constinArgument_window)).boolEnum () ;
    if (kBoolTrue == test_1) {
      var_startIndex_11701 = object->mProperty_nextInstructionIndex.substract_operation (constinArgument_window, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 349)) ;
    }
  }
  if (kBoolFalse == test_1) {
    var_startIndex_11701 = GALGAS_uint ((uint32_t) 0U) ;
  }
  enumGalgasBool test_2 = kBoolTrue ;
  if (kBoolTrue == test_2) {
    test_2 = GALGAS_bool (kIsStrictInf, var_startIndex_11701.add_operation (constinArgument_window.multiply_operation (GALGAS_uint ((uint32_t) 2U), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 353)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 353)).objectCompare (object->mProperty_instructionList.getter_length (SOURCE_FILE ("gtl_debugger.galgas", 353)))).boolEnum () ;
    if (kBoolTrue == test_2) {
      var_displayLength_11723 = GALGAS_uint ((uint32_t) 2U).multiply_operation (constinArgument_window, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 354)) ;
    }
  }
  if (kBoolFalse == test_2) {
    var_displayLength_11723 = object->mProperty_instructionList.getter_length (SOURCE_FILE ("gtl_debugger.galgas", 356)).substract_operation (var_startIndex_11701, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 356)) ;
  }
  inCompiler->printMessage (function_endc (inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 358))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 358)) ;
  cEnumerator_gtlInstructionList enumerator_12131 (object->mProperty_instructionList.getter_subListWithRange (GALGAS_range::constructor_new (var_startIndex_11701, var_displayLength_11723  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 360)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 360)), kENUMERATION_UP) ;
  GALGAS_uint index_12032 ((uint32_t) 0) ;
  while (enumerator_12131.hasCurrentObject ()) {
    enumGalgasBool test_3 = kBoolTrue ;
    if (kBoolTrue == test_3) {
      test_3 = GALGAS_bool (kIsEqual, index_12032.add_operation (var_startIndex_11701, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 363)).objectCompare (object->mProperty_nextInstructionIndex)).boolEnum () ;
      if (kBoolTrue == test_3) {
        inCompiler->printMessage (function_red (inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 364)).add_operation (function_bold (inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 364)), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 364))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 364)) ;
        inCompiler->printMessage (var_identationString_11627.add_operation (GALGAS_string (">>> "), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 365))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 365)) ;
        inCompiler->printMessage (function_endc (inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 366))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 366)) ;
      }
    }
    if (kBoolFalse == test_3) {
      inCompiler->printMessage (var_identationString_11627.add_operation (GALGAS_string ("    "), inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 368))  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 368)) ;
    }
    const GALGAS_debuggerContext temp_4 = object ;
    callExtensionMethod_displayWithLocation ((const cPtr_gtlInstruction *) enumerator_12131.current_instruction (HERE).ptr (), temp_4, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 370)) ;
    enumerator_12131.gotoNextObject () ;
    index_12032.increment_operation (inCompiler  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 359)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionMethod_debuggerContext_hereWeAre (void) {
  enterExtensionMethod_hereWeAre (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                  extensionMethod_debuggerContext_hereWeAre) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionMethod_debuggerContext_hereWeAre (void) {
  gExtensionMethodTable_debuggerContext_hereWeAre.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gMethod_debuggerContext_hereWeAre (defineExtensionMethod_debuggerContext_hereWeAre,
                                                      freeExtensionMethod_debuggerContext_hereWeAre) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                               Extension setter '@debuggerContext pushInstructionList'                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_pushInstructionList> gExtensionModifierTable_debuggerContext_pushInstructionList ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_pushInstructionList (const int32_t inClassIndex,
                                               extensionSetterSignature_debuggerContext_pushInstructionList inModifier) {
  gExtensionModifierTable_debuggerContext_pushInstructionList.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_pushInstructionList (cPtr_debuggerContext * inObject,
                                              const GALGAS_gtlInstructionList constin_instructions,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_pushInstructionList f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_pushInstructionList.count ()) {
      f = gExtensionModifierTable_debuggerContext_pushInstructionList (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_pushInstructionList.count ()) {
           f = gExtensionModifierTable_debuggerContext_pushInstructionList (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_pushInstructionList.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, constin_instructions, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_pushInstructionList (cPtr_debuggerContext * inObject,
                                                                 const GALGAS_gtlInstructionList constinArgument_instructions,
                                                                 C_Compiler * /* inCompiler */
                                                                 COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  object->mProperty_contextStack.addAssign_operation (object->mProperty_nextInstructionIndex, object->mProperty_instructionList  COMMA_SOURCE_FILE ("gtl_debugger.galgas", 379)) ;
  object->mProperty_nextInstructionIndex = GALGAS_uint ((uint32_t) 0U) ;
  object->mProperty_instructionList = constinArgument_instructions ;
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_pushInstructionList (void) {
  enterExtensionSetter_pushInstructionList (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                            extensionSetter_debuggerContext_pushInstructionList) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_pushInstructionList (void) {
  gExtensionModifierTable_debuggerContext_pushInstructionList.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_pushInstructionList (defineExtensionSetter_debuggerContext_pushInstructionList,
                                                                freeExtensionModifier_debuggerContext_pushInstructionList) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                               Extension setter '@debuggerContext popInstructionList'                                *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_popInstructionList> gExtensionModifierTable_debuggerContext_popInstructionList ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_popInstructionList (const int32_t inClassIndex,
                                              extensionSetterSignature_debuggerContext_popInstructionList inModifier) {
  gExtensionModifierTable_debuggerContext_popInstructionList.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_popInstructionList (cPtr_debuggerContext * inObject,
                                             C_Compiler * inCompiler
                                             COMMA_LOCATION_ARGS) {
//--- Drop output arguments
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_popInstructionList f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_popInstructionList.count ()) {
      f = gExtensionModifierTable_debuggerContext_popInstructionList (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_popInstructionList.count ()) {
           f = gExtensionModifierTable_debuggerContext_popInstructionList (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_popInstructionList.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_popInstructionList (cPtr_debuggerContext * inObject,
                                                                C_Compiler * inCompiler
                                                                COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  {
  object->mProperty_contextStack.setter_popLast (object->mProperty_nextInstructionIndex, object->mProperty_instructionList, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 386)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_popInstructionList (void) {
  enterExtensionSetter_popInstructionList (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                           extensionSetter_debuggerContext_popInstructionList) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_popInstructionList (void) {
  gExtensionModifierTable_debuggerContext_popInstructionList.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_popInstructionList (defineExtensionSetter_debuggerContext_popInstructionList,
                                                               freeExtensionModifier_debuggerContext_popInstructionList) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                   Extension setter '@debuggerContext getCommand'                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <extensionSetterSignature_debuggerContext_getCommand> gExtensionModifierTable_debuggerContext_getCommand ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_getCommand (const int32_t inClassIndex,
                                      extensionSetterSignature_debuggerContext_getCommand inModifier) {
  gExtensionModifierTable_debuggerContext_getCommand.forceObjectAtIndex (inClassIndex, inModifier, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_getCommand (cPtr_debuggerContext * inObject,
                                     GALGAS_string & out_command,
                                     C_Compiler * inCompiler
                                     COMMA_LOCATION_ARGS) {
//--- Drop output arguments
  out_command.drop () ;
//--- Find setter
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_debuggerContext) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    extensionSetterSignature_debuggerContext_getCommand f = NULL ;
    if (classIndex < gExtensionModifierTable_debuggerContext_getCommand.count ()) {
      f = gExtensionModifierTable_debuggerContext_getCommand (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionModifierTable_debuggerContext_getCommand.count ()) {
           f = gExtensionModifierTable_debuggerContext_getCommand (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionModifierTable_debuggerContext_getCommand.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    f (inObject, out_command, inCompiler COMMA_THERE) ;
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void extensionSetter_debuggerContext_getCommand (cPtr_debuggerContext * inObject,
                                                        GALGAS_string & outArgument_command,
                                                        C_Compiler * inCompiler
                                                        COMMA_UNUSED_LOCATION_ARGS) {
  cPtr_debuggerContext * object = inObject ;
  macroValidSharedObject (object, cPtr_debuggerContext) ;
  {
  object->mProperty_commandInput.insulate (HERE) ;
  cPtr_debugCommandInput * ptr_12957 = (cPtr_debugCommandInput *) object->mProperty_commandInput.ptr () ;
  callExtensionSetter_getCommand ((cPtr_debugCommandInput *) ptr_12957, outArgument_command, inCompiler COMMA_SOURCE_FILE ("gtl_debugger.galgas", 393)) ;
  }
}
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void defineExtensionSetter_debuggerContext_getCommand (void) {
  enterExtensionSetter_getCommand (kTypeDescriptor_GALGAS_debuggerContext.mSlotID,
                                   extensionSetter_debuggerContext_getCommand) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionModifier_debuggerContext_getCommand (void) {
  gExtensionModifierTable_debuggerContext_getCommand.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gSetter_debuggerContext_getCommand (defineExtensionSetter_debuggerContext_getCommand,
                                                       freeExtensionModifier_debuggerContext_getCommand) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                           Abstract extension getter '@gtlExpression stringRepresentation'                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_gtlExpression_stringRepresentation> gExtensionGetterTable_gtlExpression_stringRepresentation ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_stringRepresentation (const int32_t inClassIndex,
                                                enterExtensionGetter_gtlExpression_stringRepresentation inGetter) {
  gExtensionGetterTable_gtlExpression_stringRepresentation.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_gtlExpression_stringRepresentation (void) {
  gExtensionGetterTable_gtlExpression_stringRepresentation.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_gtlExpression_stringRepresentation (NULL,
                                                               freeExtensionGetter_gtlExpression_stringRepresentation) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_string callExtensionGetter_stringRepresentation (const cPtr_gtlExpression * inObject,
                                                        C_Compiler * inCompiler
                                                        COMMA_LOCATION_ARGS) {
  GALGAS_string result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlExpression) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_gtlExpression_stringRepresentation f = NULL ;
    if (classIndex < gExtensionGetterTable_gtlExpression_stringRepresentation.count ()) {
      f = gExtensionGetterTable_gtlExpression_stringRepresentation (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_gtlExpression_stringRepresentation.count ()) {
           f = gExtensionGetterTable_gtlExpression_stringRepresentation (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_gtlExpression_stringRepresentation.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                              Abstract extension getter '@gtlData stringRepresentation'                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static TC_UniqueArray <enterExtensionGetter_gtlData_stringRepresentation> gExtensionGetterTable_gtlData_stringRepresentation ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_stringRepresentation (const int32_t inClassIndex,
                                                enterExtensionGetter_gtlData_stringRepresentation inGetter) {
  gExtensionGetterTable_gtlData_stringRepresentation.forceObjectAtIndex (inClassIndex, inGetter, NULL COMMA_HERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

static void freeExtensionGetter_gtlData_stringRepresentation (void) {
  gExtensionGetterTable_gtlData_stringRepresentation.free () ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

C_PrologueEpilogue gGetter_gtlData_stringRepresentation (NULL,
                                                         freeExtensionGetter_gtlData_stringRepresentation) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_string callExtensionGetter_stringRepresentation (const cPtr_gtlData * inObject,
                                                        C_Compiler * inCompiler
                                                        COMMA_LOCATION_ARGS) {
  GALGAS_string result ;
//--- Find Reader
  if (NULL != inObject) {
    macroValidSharedObject (inObject, cPtr_gtlData) ;
    const C_galgas_type_descriptor * info = inObject->classDescriptor () ;
    const int32_t classIndex = info->mSlotID ;
    enterExtensionGetter_gtlData_stringRepresentation f = NULL ;
    if (classIndex < gExtensionGetterTable_gtlData_stringRepresentation.count ()) {
      f = gExtensionGetterTable_gtlData_stringRepresentation (classIndex COMMA_HERE) ;
    }
    if (NULL == f) {
       const C_galgas_type_descriptor * p = info->mSuperclassDescriptor ;
       while ((NULL == f) && (NULL != p)) {
         if (p->mSlotID < gExtensionGetterTable_gtlData_stringRepresentation.count ()) {
           f = gExtensionGetterTable_gtlData_stringRepresentation (p->mSlotID COMMA_HERE) ;
         }
         p = p->mSuperclassDescriptor ;
       }
       gExtensionGetterTable_gtlData_stringRepresentation.forceObjectAtIndex (classIndex, f, NULL COMMA_HERE) ;
    }
    if (NULL == f) {
      fatalError ("FATAL CATEGORY READER CALL ERROR", __FILE__, __LINE__) ;
    }else{
      result = f (inObject, inCompiler COMMA_THERE) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                   Extension Getter '@lsint stringRepresentation'                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_string extensionGetter_stringRepresentation (const GALGAS_lsint & inObject,
                                                    C_Compiler * /* inCompiler */
                                                    COMMA_UNUSED_LOCATION_ARGS) {
  GALGAS_string result_result ; // Returned variable
  const GALGAS_lsint temp_0 = inObject ;
  GALGAS_string temp_1 ;
  const enumGalgasBool test_2 = GALGAS_bool (kIsStrictInf, GALGAS_sint ((int32_t) 0L).objectCompare (temp_0.getter_sint (SOURCE_FILE ("gtl_debugger.galgas", 1120)))).boolEnum () ;
  if (kBoolTrue == test_2) {
    temp_1 = GALGAS_string ("<") ;
  }else if (kBoolFalse == test_2) {
    temp_1 = GALGAS_string (">") ;
  }
  result_result = temp_1 ;
//---
  return result_result ;
}




//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlDoNotInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlDoNotInstruction * p = (const cPtr_gtlDoNotInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlDoNotInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_numToDelete.objectCompare (p->mProperty_numToDelete) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlDoNotInstruction::objectCompare (const GALGAS_gtlDoNotInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlDoNotInstruction::GALGAS_gtlDoNotInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlDoNotInstruction GALGAS_gtlDoNotInstruction::constructor_default (LOCATION_ARGS) {
  return GALGAS_gtlDoNotInstruction::constructor_new (GALGAS_location::constructor_nowhere (HERE),
                                                      GALGAS_string::constructor_default (HERE),
                                                      GALGAS_lbigint::constructor_default (HERE)
                                                      COMMA_THERE) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlDoNotInstruction::GALGAS_gtlDoNotInstruction (const cPtr_gtlDoNotInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlDoNotInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlDoNotInstruction GALGAS_gtlDoNotInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                        const GALGAS_string & inAttribute_signature,
                                                                        const GALGAS_lbigint & inAttribute_numToDelete
                                                                        COMMA_LOCATION_ARGS) {
  GALGAS_gtlDoNotInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_numToDelete.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlDoNotInstruction (inAttribute_where, inAttribute_signature, inAttribute_numToDelete COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lbigint GALGAS_gtlDoNotInstruction::getter_numToDelete (UNUSED_LOCATION_ARGS) const {
  GALGAS_lbigint result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlDoNotInstruction * p = (const cPtr_gtlDoNotInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlDoNotInstruction) ;
    result = p->mProperty_numToDelete ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_lbigint cPtr_gtlDoNotInstruction::getter_numToDelete (UNUSED_LOCATION_ARGS) const {
  return mProperty_numToDelete ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                    Pointer class for @gtlDoNotInstruction class                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlDoNotInstruction::cPtr_gtlDoNotInstruction (const GALGAS_location & in_where,
                                                    const GALGAS_string & in_signature,
                                                    const GALGAS_lbigint & in_numToDelete
                                                    COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_numToDelete (in_numToDelete) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlDoNotInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlDoNotInstruction ;
}

void cPtr_gtlDoNotInstruction::description (C_String & ioString,
                                            const int32_t inIndentation) const {
  ioString << "[@gtlDoNotInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_numToDelete.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlDoNotInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlDoNotInstruction (mProperty_where, mProperty_signature, mProperty_numToDelete COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                              @gtlDoNotInstruction type                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlDoNotInstruction ("gtlDoNotInstruction",
                                            & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlDoNotInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlDoNotInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlDoNotInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlDoNotInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlDoNotInstruction GALGAS_gtlDoNotInstruction::extractObject (const GALGAS_object & inObject,
                                                                      C_Compiler * inCompiler
                                                                      COMMA_LOCATION_ARGS) {
  GALGAS_gtlDoNotInstruction result ;
  const GALGAS_gtlDoNotInstruction * p = (const GALGAS_gtlDoNotInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlDoNotInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlDoNotInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Object comparison                                                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typeComparisonResult cPtr_gtlWatchpointInstruction::dynamicObjectCompare (const acPtr_class * inOperandPtr) const {
  typeComparisonResult result = kOperandEqual ;
  const cPtr_gtlWatchpointInstruction * p = (const cPtr_gtlWatchpointInstruction *) inOperandPtr ;
  macroValidSharedObject (p, cPtr_gtlWatchpointInstruction) ;
  if (kOperandEqual == result) {
    result = mProperty_where.objectCompare (p->mProperty_where) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_signature.objectCompare (p->mProperty_signature) ;
  }
  if (kOperandEqual == result) {
    result = mProperty_watchExpression.objectCompare (p->mProperty_watchExpression) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*


typeComparisonResult GALGAS_gtlWatchpointInstruction::objectCompare (const GALGAS_gtlWatchpointInstruction & inOperand) const {
  typeComparisonResult result = kOperandNotValid ;
  if (isValid () && inOperand.isValid ()) {
    const int32_t mySlot = mObjectPtr->classDescriptor ()->mSlotID ;
    const int32_t operandSlot = inOperand.mObjectPtr->classDescriptor ()->mSlotID ;
    if (mySlot < operandSlot) {
      result = kFirstOperandLowerThanSecond ;
    }else if (mySlot > operandSlot) {
      result = kFirstOperandGreaterThanSecond ;
    }else{
      result = mObjectPtr->dynamicObjectCompare (inOperand.mObjectPtr) ;
    }
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWatchpointInstruction::GALGAS_gtlWatchpointInstruction (void) :
GALGAS_gtlInstruction () {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWatchpointInstruction::GALGAS_gtlWatchpointInstruction (const cPtr_gtlWatchpointInstruction * inSourcePtr) :
GALGAS_gtlInstruction (inSourcePtr) {
  macroNullOrValidSharedObject (inSourcePtr, cPtr_gtlWatchpointInstruction) ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWatchpointInstruction GALGAS_gtlWatchpointInstruction::constructor_new (const GALGAS_location & inAttribute_where,
                                                                                  const GALGAS_string & inAttribute_signature,
                                                                                  const GALGAS_gtlExpression & inAttribute_watchExpression
                                                                                  COMMA_LOCATION_ARGS) {
  GALGAS_gtlWatchpointInstruction result ;
  if (inAttribute_where.isValid () && inAttribute_signature.isValid () && inAttribute_watchExpression.isValid ()) {
    macroMyNew (result.mObjectPtr, cPtr_gtlWatchpointInstruction (inAttribute_where, inAttribute_signature, inAttribute_watchExpression COMMA_THERE)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression GALGAS_gtlWatchpointInstruction::getter_watchExpression (UNUSED_LOCATION_ARGS) const {
  GALGAS_gtlExpression result ;
  if (NULL != mObjectPtr) {
    const cPtr_gtlWatchpointInstruction * p = (const cPtr_gtlWatchpointInstruction *) mObjectPtr ;
    macroValidSharedObject (p, cPtr_gtlWatchpointInstruction) ;
    result = p->mProperty_watchExpression ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlExpression cPtr_gtlWatchpointInstruction::getter_watchExpression (UNUSED_LOCATION_ARGS) const {
  return mProperty_watchExpression ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                  Pointer class for @gtlWatchpointInstruction class                                  *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

cPtr_gtlWatchpointInstruction::cPtr_gtlWatchpointInstruction (const GALGAS_location & in_where,
                                                              const GALGAS_string & in_signature,
                                                              const GALGAS_gtlExpression & in_watchExpression
                                                              COMMA_LOCATION_ARGS) :
cPtr_gtlInstruction (in_where, in_signature COMMA_THERE),
mProperty_watchExpression (in_watchExpression) {
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * cPtr_gtlWatchpointInstruction::classDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlWatchpointInstruction ;
}

void cPtr_gtlWatchpointInstruction::description (C_String & ioString,
                                                 const int32_t inIndentation) const {
  ioString << "[@gtlWatchpointInstruction:" ;
  mProperty_where.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_signature.description (ioString, inIndentation+1) ;
  ioString << ", " ;
  mProperty_watchExpression.description (ioString, inIndentation+1) ;
  ioString << "]" ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

acPtr_class * cPtr_gtlWatchpointInstruction::duplicate (LOCATION_ARGS) const {
  acPtr_class * ptr = NULL ;
  macroMyNew (ptr, cPtr_gtlWatchpointInstruction (mProperty_where, mProperty_signature, mProperty_watchExpression COMMA_THERE)) ;
  return ptr ;
}


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @gtlWatchpointInstruction type                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor
kTypeDescriptor_GALGAS_gtlWatchpointInstruction ("gtlWatchpointInstruction",
                                                 & kTypeDescriptor_GALGAS_gtlInstruction) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

const C_galgas_type_descriptor * GALGAS_gtlWatchpointInstruction::staticTypeDescriptor (void) const {
  return & kTypeDescriptor_GALGAS_gtlWatchpointInstruction ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

AC_GALGAS_root * GALGAS_gtlWatchpointInstruction::clonedObject (void) const {
  AC_GALGAS_root * result = NULL ;
  if (isValid ()) {
    macroMyNew (result, GALGAS_gtlWatchpointInstruction (*this)) ;
  }
  return result ;
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

GALGAS_gtlWatchpointInstruction GALGAS_gtlWatchpointInstruction::extractObject (const GALGAS_object & inObject,
                                                                                C_Compiler * inCompiler
                                                                                COMMA_LOCATION_ARGS) {
  GALGAS_gtlWatchpointInstruction result ;
  const GALGAS_gtlWatchpointInstruction * p = (const GALGAS_gtlWatchpointInstruction *) inObject.embeddedObject () ;
  if (NULL != p) {
    if (NULL != dynamic_cast <const GALGAS_gtlWatchpointInstruction *> (p)) {
      result = *p ;
    }else{
      inCompiler->castError ("gtlWatchpointInstruction", p->dynamicTypeDescriptor () COMMA_THERE) ;
    }  
  }
  return result ;
}

//---------------------------------------------------------------------------------------------------------------------*

#include "utilities/MF_MemoryControl.h"
#include "galgas2/C_galgas_CLI_Options.h"

#include "files/C_FileManager.h"

//---------------------------------------------------------------------------------------------------------------------*


//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                   L L ( 1 )    P R O D U C T I O N    R U L E S                                      
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

#define TERMINAL(t)     ((t)+1)
#define NONTERMINAL(nt) ((-nt)-1)
#define END_PRODUCTION  (0)

static const int16_t gProductions_gtl_debugger_grammar [] = {
// At index 0 : <gtl_expression>, in file 'gtl_debugger_expression_parser.ggs', line 33
  NONTERMINAL (5) // <gtl_relation_term>
, NONTERMINAL (24) // <select_gtl_5F_debugger_5F_expression_5F_parser_0>
, END_PRODUCTION
// At index 3 : <gtl_variable>, in file 'gtl_debugger_expression_parser.ggs', line 667
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, NONTERMINAL (45) // <select_gtl_5F_debugger_5F_expression_5F_parser_21>
, NONTERMINAL (44) // <select_gtl_5F_debugger_5F_expression_5F_parser_20>
, END_PRODUCTION
// At index 7 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 37
, NONTERMINAL (10) // <select_gtl_5F_debugger_5F_parser_0>
, END_PRODUCTION
// At index 9 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 52
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_help) // $help$
, END_PRODUCTION
// At index 11 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 63
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_step) // $step$
, END_PRODUCTION
// At index 13 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 74
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_load) // $load$
, NONTERMINAL (11) // <select_gtl_5F_debugger_5F_parser_1>
, END_PRODUCTION
// At index 16 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 92
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_hist) // $hist$
, END_PRODUCTION
// At index 18 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 103
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_break) // $break$
, NONTERMINAL (12) // <select_gtl_5F_debugger_5F_parser_2>
, END_PRODUCTION
// At index 21 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 169
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_watch) // $watch$
, NONTERMINAL (15) // <select_gtl_5F_debugger_5F_parser_5>
, END_PRODUCTION
// At index 24 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 207
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_do) // $do$
, NONTERMINAL (17) // <select_gtl_5F_debugger_5F_parser_7>
, END_PRODUCTION
// At index 27 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 244
, END_PRODUCTION
// At index 28 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 254
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_let) // $let$
, NONTERMINAL (1) // <gtl_variable>
, NONTERMINAL (19) // <select_gtl_5F_debugger_5F_parser_9>
, END_PRODUCTION
// At index 32 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 368
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_unlet) // $unlet$
, NONTERMINAL (1) // <gtl_variable>
, END_PRODUCTION
// At index 35 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 381
, NONTERMINAL (3) // <gtl_step_do_command>
, END_PRODUCTION
// At index 37 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 388
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables) // $variables$
, END_PRODUCTION
// At index 39 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 400
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display) // $display$
, NONTERMINAL (1) // <gtl_variable>
, END_PRODUCTION
// At index 42 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 413
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print) // $print$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 45 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 427
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list) // $list$
, NONTERMINAL (20) // <select_gtl_5F_debugger_5F_parser_10>
, END_PRODUCTION
// At index 48 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 448
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if) // $if$
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then) // $then$
, NONTERMINAL (4) // <gtl_step_do_command_list>
, NONTERMINAL (21) // <select_gtl_5F_debugger_5F_parser_11>
, NONTERMINAL (22) // <select_gtl_5F_debugger_5F_parser_12>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end) // $end$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if) // $if$
, END_PRODUCTION
// At index 57 : <gtl_step_do_command_list>, in file 'gtl_debugger_parser.ggs', line 481
, NONTERMINAL (23) // <select_gtl_5F_debugger_5F_parser_13>
, END_PRODUCTION
// At index 59 : <gtl_relation_term>, in file 'gtl_debugger_expression_parser.ggs', line 53
, NONTERMINAL (6) // <gtl_relation_factor>
, NONTERMINAL (25) // <select_gtl_5F_debugger_5F_expression_5F_parser_1>
, END_PRODUCTION
// At index 62 : <gtl_relation_factor>, in file 'gtl_debugger_expression_parser.ggs', line 69
, NONTERMINAL (7) // <gtl_simple_expression>
, NONTERMINAL (26) // <select_gtl_5F_debugger_5F_expression_5F_parser_2>
, END_PRODUCTION
// At index 65 : <gtl_simple_expression>, in file 'gtl_debugger_expression_parser.ggs', line 117
, NONTERMINAL (8) // <gtl_term>
, NONTERMINAL (27) // <select_gtl_5F_debugger_5F_expression_5F_parser_3>
, END_PRODUCTION
// At index 68 : <gtl_term>, in file 'gtl_debugger_expression_parser.ggs', line 162
, NONTERMINAL (9) // <gtl_factor>
, NONTERMINAL (28) // <select_gtl_5F_debugger_5F_expression_5F_parser_4>
, END_PRODUCTION
// At index 71 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 192
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_) // $($
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_) // $)$
, END_PRODUCTION
// At index 75 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 208
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not) // $not$
, NONTERMINAL (9) // <gtl_factor>
, END_PRODUCTION
// At index 78 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 220
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7E_) // $~$
, NONTERMINAL (9) // <gtl_factor>
, END_PRODUCTION
// At index 81 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 232
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_) // $-$
, NONTERMINAL (9) // <gtl_factor>
, END_PRODUCTION
// At index 84 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 244
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_) // $+$
, NONTERMINAL (9) // <gtl_factor>
, END_PRODUCTION
// At index 87 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 256
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_yes) // $yes$
, END_PRODUCTION
// At index 89 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 269
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_no) // $no$
, END_PRODUCTION
// At index 91 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 282
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint) // $signed_literal_integer_bigint$
, END_PRODUCTION
// At index 93 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 295
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_double) // $literal_double$
, END_PRODUCTION
// At index 95 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 308
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string) // $string$
, END_PRODUCTION
// At index 97 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 321
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_char) // $literal_char$
, END_PRODUCTION
// At index 99 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 335
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_) // $[$
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, NONTERMINAL (29) // <select_gtl_5F_debugger_5F_expression_5F_parser_5>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_) // $]$
, END_PRODUCTION
// At index 105 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 369
, NONTERMINAL (1) // <gtl_variable>
, NONTERMINAL (31) // <select_gtl_5F_debugger_5F_expression_5F_parser_7>
, END_PRODUCTION
// At index 108 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 401
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_exists) // $exists$
, NONTERMINAL (1) // <gtl_variable>
, NONTERMINAL (34) // <select_gtl_5F_debugger_5F_expression_5F_parser_10>
, END_PRODUCTION
// At index 112 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 420
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_typeof) // $typeof$
, NONTERMINAL (1) // <gtl_variable>
, END_PRODUCTION
// At index 115 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 429
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_true) // $true$
, END_PRODUCTION
// At index 117 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 445
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_false) // $false$
, END_PRODUCTION
// At index 119 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 461
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_enum) // $literal_enum$
, END_PRODUCTION
// At index 121 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 477
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40_) // $@$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, END_PRODUCTION
// At index 124 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 514
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptylist) // $emptylist$
, END_PRODUCTION
// At index 126 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 533
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptymap) // $emptymap$
, END_PRODUCTION
// At index 128 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 552
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mapof) // $mapof$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (35) // <select_gtl_5F_debugger_5F_expression_5F_parser_11>
, END_PRODUCTION
// At index 132 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 576
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_listof) // $listof$
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end) // $end$
, END_PRODUCTION
// At index 136 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 587
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__28_) // $@($
, NONTERMINAL (36) // <select_gtl_5F_debugger_5F_expression_5F_parser_12>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_) // $)$
, END_PRODUCTION
// At index 140 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 606
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__5B_) // $@[$
, NONTERMINAL (38) // <select_gtl_5F_debugger_5F_expression_5F_parser_14>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_) // $]$
, END_PRODUCTION
// At index 144 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 627
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__7B_) // $@{$
, NONTERMINAL (40) // <select_gtl_5F_debugger_5F_expression_5F_parser_16>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_) // $}$
, END_PRODUCTION
// At index 148 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 648
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__21_) // $@!$
, NONTERMINAL (42) // <select_gtl_5F_debugger_5F_expression_5F_parser_18>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_) // $!$
, END_PRODUCTION
//---- Added productions from 'select' and 'repeat' instructions
// At index 152 : <select_gtl_5F_debugger_5F_parser_0>, in file 'gtl_debugger_parser.ggs', line 40
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_cont) // $cont$
, END_PRODUCTION
// At index 154 : <select_gtl_5F_debugger_5F_parser_0>, in file 'gtl_debugger_parser.ggs', line 40
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_continue) // $continue$
, END_PRODUCTION
// At index 156 : <select_gtl_5F_debugger_5F_parser_1>, in file 'gtl_debugger_parser.ggs', line 79
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, END_PRODUCTION
// At index 158 : <select_gtl_5F_debugger_5F_parser_1>, in file 'gtl_debugger_parser.ggs', line 79
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string) // $string$
, END_PRODUCTION
// At index 160 : <select_gtl_5F_debugger_5F_parser_2>, in file 'gtl_debugger_parser.ggs', line 107
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not) // $not$
, NONTERMINAL (13) // <select_gtl_5F_debugger_5F_parser_3>
, END_PRODUCTION
// At index 163 : <select_gtl_5F_debugger_5F_parser_2>, in file 'gtl_debugger_parser.ggs', line 107
, NONTERMINAL (14) // <select_gtl_5F_debugger_5F_parser_4>
, END_PRODUCTION
// At index 165 : <select_gtl_5F_debugger_5F_parser_2>, in file 'gtl_debugger_parser.ggs', line 107
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string) // $string$
, END_PRODUCTION
// At index 167 : <select_gtl_5F_debugger_5F_parser_2>, in file 'gtl_debugger_parser.ggs', line 107
, END_PRODUCTION
// At index 168 : <select_gtl_5F_debugger_5F_parser_3>, in file 'gtl_debugger_parser.ggs', line 109
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint) // $signed_literal_integer_bigint$
, END_PRODUCTION
// At index 170 : <select_gtl_5F_debugger_5F_parser_3>, in file 'gtl_debugger_parser.ggs', line 109
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_all) // $all$
, END_PRODUCTION
// At index 172 : <select_gtl_5F_debugger_5F_parser_4>, in file 'gtl_debugger_parser.ggs', line 124
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_) // $.$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A_) // $:$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint) // $signed_literal_integer_bigint$
, END_PRODUCTION
// At index 178 : <select_gtl_5F_debugger_5F_parser_4>, in file 'gtl_debugger_parser.ggs', line 124
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint) // $signed_literal_integer_bigint$
, END_PRODUCTION
// At index 180 : <select_gtl_5F_debugger_5F_parser_5>, in file 'gtl_debugger_parser.ggs', line 173
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not) // $not$
, NONTERMINAL (16) // <select_gtl_5F_debugger_5F_parser_6>
, END_PRODUCTION
// At index 183 : <select_gtl_5F_debugger_5F_parser_5>, in file 'gtl_debugger_parser.ggs', line 173
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_) // $($
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_) // $)$
, END_PRODUCTION
// At index 187 : <select_gtl_5F_debugger_5F_parser_5>, in file 'gtl_debugger_parser.ggs', line 173
, END_PRODUCTION
// At index 188 : <select_gtl_5F_debugger_5F_parser_6>, in file 'gtl_debugger_parser.ggs', line 175
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint) // $signed_literal_integer_bigint$
, END_PRODUCTION
// At index 190 : <select_gtl_5F_debugger_5F_parser_6>, in file 'gtl_debugger_parser.ggs', line 175
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_all) // $all$
, END_PRODUCTION
// At index 192 : <select_gtl_5F_debugger_5F_parser_7>, in file 'gtl_debugger_parser.ggs', line 212
, NONTERMINAL (3) // <gtl_step_do_command>
, END_PRODUCTION
// At index 194 : <select_gtl_5F_debugger_5F_parser_7>, in file 'gtl_debugger_parser.ggs', line 212
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not) // $not$
, NONTERMINAL (18) // <select_gtl_5F_debugger_5F_parser_8>
, END_PRODUCTION
// At index 197 : <select_gtl_5F_debugger_5F_parser_7>, in file 'gtl_debugger_parser.ggs', line 212
, END_PRODUCTION
// At index 198 : <select_gtl_5F_debugger_5F_parser_8>, in file 'gtl_debugger_parser.ggs', line 221
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint) // $signed_literal_integer_bigint$
, END_PRODUCTION
// At index 200 : <select_gtl_5F_debugger_5F_parser_8>, in file 'gtl_debugger_parser.ggs', line 221
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_all) // $all$
, END_PRODUCTION
// At index 202 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3D_) // $:=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 205 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B__3D_) // $+=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 208 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D__3D_) // $-=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 211 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A__3D_) // $*=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 214 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F__3D_) // $/=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 217 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod_3D_) // $mod=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 220 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C__3D_) // $<<=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 223 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E__3D_) // $>>=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 226 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26__3D_) // $&=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 229 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C__3D_) // $|=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 232 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E__3D_) // $^=$
, NONTERMINAL (0) // <gtl_expression>
, END_PRODUCTION
// At index 235 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
, END_PRODUCTION
// At index 236 : <select_gtl_5F_debugger_5F_parser_10>, in file 'gtl_debugger_parser.ggs', line 432
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint) // $signed_literal_integer_bigint$
, END_PRODUCTION
// At index 238 : <select_gtl_5F_debugger_5F_parser_10>, in file 'gtl_debugger_parser.ggs', line 432
, END_PRODUCTION
// At index 239 : <select_gtl_5F_debugger_5F_parser_11>, in file 'gtl_debugger_parser.ggs', line 455
, END_PRODUCTION
// At index 240 : <select_gtl_5F_debugger_5F_parser_11>, in file 'gtl_debugger_parser.ggs', line 455
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif) // $elsif$
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then) // $then$
, NONTERMINAL (4) // <gtl_step_do_command_list>
, NONTERMINAL (21) // <select_gtl_5F_debugger_5F_parser_11>
, END_PRODUCTION
// At index 246 : <select_gtl_5F_debugger_5F_parser_12>, in file 'gtl_debugger_parser.ggs', line 465
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else) // $else$
, NONTERMINAL (4) // <gtl_step_do_command_list>
, END_PRODUCTION
// At index 249 : <select_gtl_5F_debugger_5F_parser_12>, in file 'gtl_debugger_parser.ggs', line 465
, END_PRODUCTION
// At index 250 : <select_gtl_5F_debugger_5F_parser_13>, in file 'gtl_debugger_parser.ggs', line 486
, END_PRODUCTION
// At index 251 : <select_gtl_5F_debugger_5F_parser_13>, in file 'gtl_debugger_parser.ggs', line 486
, NONTERMINAL (3) // <gtl_step_do_command>
, NONTERMINAL (23) // <select_gtl_5F_debugger_5F_parser_13>
, END_PRODUCTION
// At index 254 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>, in file 'gtl_debugger_expression_parser.ggs', line 37
, END_PRODUCTION
// At index 255 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>, in file 'gtl_debugger_expression_parser.ggs', line 37
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_) // $|$
, NONTERMINAL (5) // <gtl_relation_term>
, NONTERMINAL (24) // <select_gtl_5F_debugger_5F_expression_5F_parser_0>
, END_PRODUCTION
// At index 259 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>, in file 'gtl_debugger_expression_parser.ggs', line 37
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_) // $^$
, NONTERMINAL (5) // <gtl_relation_term>
, NONTERMINAL (24) // <select_gtl_5F_debugger_5F_expression_5F_parser_0>
, END_PRODUCTION
// At index 263 : <select_gtl_5F_debugger_5F_expression_5F_parser_1>, in file 'gtl_debugger_expression_parser.ggs', line 57
, END_PRODUCTION
// At index 264 : <select_gtl_5F_debugger_5F_expression_5F_parser_1>, in file 'gtl_debugger_expression_parser.ggs', line 57
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_) // $&$
, NONTERMINAL (6) // <gtl_relation_factor>
, NONTERMINAL (25) // <select_gtl_5F_debugger_5F_expression_5F_parser_1>
, END_PRODUCTION
// At index 268 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
, END_PRODUCTION
// At index 269 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_) // $==$
, NONTERMINAL (7) // <gtl_simple_expression>
, END_PRODUCTION
// At index 272 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_) // $!=$
, NONTERMINAL (7) // <gtl_simple_expression>
, END_PRODUCTION
// At index 275 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_) // $<=$
, NONTERMINAL (7) // <gtl_simple_expression>
, END_PRODUCTION
// At index 278 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_) // $>=$
, NONTERMINAL (7) // <gtl_simple_expression>
, END_PRODUCTION
// At index 281 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_) // $>$
, NONTERMINAL (7) // <gtl_simple_expression>
, END_PRODUCTION
// At index 284 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_) // $<$
, NONTERMINAL (7) // <gtl_simple_expression>
, END_PRODUCTION
// At index 287 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
, END_PRODUCTION
// At index 288 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_) // $<<$
, NONTERMINAL (8) // <gtl_term>
, NONTERMINAL (27) // <select_gtl_5F_debugger_5F_expression_5F_parser_3>
, END_PRODUCTION
// At index 292 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_) // $>>$
, NONTERMINAL (8) // <gtl_term>
, NONTERMINAL (27) // <select_gtl_5F_debugger_5F_expression_5F_parser_3>
, END_PRODUCTION
// At index 296 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_) // $+$
, NONTERMINAL (8) // <gtl_term>
, NONTERMINAL (27) // <select_gtl_5F_debugger_5F_expression_5F_parser_3>
, END_PRODUCTION
// At index 300 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_) // $.$
, NONTERMINAL (8) // <gtl_term>
, NONTERMINAL (27) // <select_gtl_5F_debugger_5F_expression_5F_parser_3>
, END_PRODUCTION
// At index 304 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_) // $-$
, NONTERMINAL (8) // <gtl_term>
, NONTERMINAL (27) // <select_gtl_5F_debugger_5F_expression_5F_parser_3>
, END_PRODUCTION
// At index 308 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>, in file 'gtl_debugger_expression_parser.ggs', line 166
, END_PRODUCTION
// At index 309 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>, in file 'gtl_debugger_expression_parser.ggs', line 166
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A_) // $*$
, NONTERMINAL (9) // <gtl_factor>
, NONTERMINAL (28) // <select_gtl_5F_debugger_5F_expression_5F_parser_4>
, END_PRODUCTION
// At index 313 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>, in file 'gtl_debugger_expression_parser.ggs', line 166
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F_) // $/$
, NONTERMINAL (9) // <gtl_factor>
, NONTERMINAL (28) // <select_gtl_5F_debugger_5F_expression_5F_parser_4>
, END_PRODUCTION
// At index 317 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>, in file 'gtl_debugger_expression_parser.ggs', line 166
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod) // $mod$
, NONTERMINAL (9) // <gtl_factor>
, NONTERMINAL (28) // <select_gtl_5F_debugger_5F_expression_5F_parser_4>
, END_PRODUCTION
// At index 321 : <select_gtl_5F_debugger_5F_expression_5F_parser_5>, in file 'gtl_debugger_expression_parser.ggs', line 348
, END_PRODUCTION
// At index 322 : <select_gtl_5F_debugger_5F_expression_5F_parser_5>, in file 'gtl_debugger_expression_parser.ggs', line 348
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A_) // $:$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (30) // <select_gtl_5F_debugger_5F_expression_5F_parser_6>
, END_PRODUCTION
// At index 326 : <select_gtl_5F_debugger_5F_expression_5F_parser_6>, in file 'gtl_debugger_expression_parser.ggs', line 351
, END_PRODUCTION
// At index 327 : <select_gtl_5F_debugger_5F_expression_5F_parser_6>, in file 'gtl_debugger_expression_parser.ggs', line 351
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_) // $,$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (30) // <select_gtl_5F_debugger_5F_expression_5F_parser_6>
, END_PRODUCTION
// At index 331 : <select_gtl_5F_debugger_5F_expression_5F_parser_7>, in file 'gtl_debugger_expression_parser.ggs', line 373
, END_PRODUCTION
// At index 332 : <select_gtl_5F_debugger_5F_expression_5F_parser_7>, in file 'gtl_debugger_expression_parser.ggs', line 373
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_) // $($
, NONTERMINAL (32) // <select_gtl_5F_debugger_5F_expression_5F_parser_8>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_) // $)$
, END_PRODUCTION
// At index 336 : <select_gtl_5F_debugger_5F_expression_5F_parser_8>, in file 'gtl_debugger_expression_parser.ggs', line 381
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (33) // <select_gtl_5F_debugger_5F_expression_5F_parser_9>
, END_PRODUCTION
// At index 339 : <select_gtl_5F_debugger_5F_expression_5F_parser_8>, in file 'gtl_debugger_expression_parser.ggs', line 381
, END_PRODUCTION
// At index 340 : <select_gtl_5F_debugger_5F_expression_5F_parser_9>, in file 'gtl_debugger_expression_parser.ggs', line 382
, END_PRODUCTION
// At index 341 : <select_gtl_5F_debugger_5F_expression_5F_parser_9>, in file 'gtl_debugger_expression_parser.ggs', line 382
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_) // $,$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (33) // <select_gtl_5F_debugger_5F_expression_5F_parser_9>
, END_PRODUCTION
// At index 345 : <select_gtl_5F_debugger_5F_expression_5F_parser_10>, in file 'gtl_debugger_expression_parser.ggs', line 405
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_default) // $default$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_) // $($
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_) // $)$
, END_PRODUCTION
// At index 350 : <select_gtl_5F_debugger_5F_expression_5F_parser_10>, in file 'gtl_debugger_expression_parser.ggs', line 405
, END_PRODUCTION
// At index 351 : <select_gtl_5F_debugger_5F_expression_5F_parser_11>, in file 'gtl_debugger_expression_parser.ggs', line 557
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by) // $by$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, END_PRODUCTION
// At index 354 : <select_gtl_5F_debugger_5F_expression_5F_parser_11>, in file 'gtl_debugger_expression_parser.ggs', line 557
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end) // $end$
, END_PRODUCTION
// At index 356 : <select_gtl_5F_debugger_5F_expression_5F_parser_12>, in file 'gtl_debugger_expression_parser.ggs', line 592
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (37) // <select_gtl_5F_debugger_5F_expression_5F_parser_13>
, END_PRODUCTION
// At index 359 : <select_gtl_5F_debugger_5F_expression_5F_parser_12>, in file 'gtl_debugger_expression_parser.ggs', line 592
, END_PRODUCTION
// At index 360 : <select_gtl_5F_debugger_5F_expression_5F_parser_13>, in file 'gtl_debugger_expression_parser.ggs', line 593
, END_PRODUCTION
// At index 361 : <select_gtl_5F_debugger_5F_expression_5F_parser_13>, in file 'gtl_debugger_expression_parser.ggs', line 593
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_) // $,$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (37) // <select_gtl_5F_debugger_5F_expression_5F_parser_13>
, END_PRODUCTION
// At index 365 : <select_gtl_5F_debugger_5F_expression_5F_parser_14>, in file 'gtl_debugger_expression_parser.ggs', line 611
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string) // $string$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A_) // $:$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (39) // <select_gtl_5F_debugger_5F_expression_5F_parser_15>
, END_PRODUCTION
// At index 370 : <select_gtl_5F_debugger_5F_expression_5F_parser_14>, in file 'gtl_debugger_expression_parser.ggs', line 611
, END_PRODUCTION
// At index 371 : <select_gtl_5F_debugger_5F_expression_5F_parser_15>, in file 'gtl_debugger_expression_parser.ggs', line 612
, END_PRODUCTION
// At index 372 : <select_gtl_5F_debugger_5F_expression_5F_parser_15>, in file 'gtl_debugger_expression_parser.ggs', line 612
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_) // $,$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string) // $string$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A_) // $:$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (39) // <select_gtl_5F_debugger_5F_expression_5F_parser_15>
, END_PRODUCTION
// At index 378 : <select_gtl_5F_debugger_5F_expression_5F_parser_16>, in file 'gtl_debugger_expression_parser.ggs', line 632
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A_) // $:$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (41) // <select_gtl_5F_debugger_5F_expression_5F_parser_17>
, END_PRODUCTION
// At index 383 : <select_gtl_5F_debugger_5F_expression_5F_parser_16>, in file 'gtl_debugger_expression_parser.ggs', line 632
, END_PRODUCTION
// At index 384 : <select_gtl_5F_debugger_5F_expression_5F_parser_17>, in file 'gtl_debugger_expression_parser.ggs', line 633
, END_PRODUCTION
// At index 385 : <select_gtl_5F_debugger_5F_expression_5F_parser_17>, in file 'gtl_debugger_expression_parser.ggs', line 633
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_) // $,$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A_) // $:$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (41) // <select_gtl_5F_debugger_5F_expression_5F_parser_17>
, END_PRODUCTION
// At index 391 : <select_gtl_5F_debugger_5F_expression_5F_parser_18>, in file 'gtl_debugger_expression_parser.ggs', line 653
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (43) // <select_gtl_5F_debugger_5F_expression_5F_parser_19>
, END_PRODUCTION
// At index 394 : <select_gtl_5F_debugger_5F_expression_5F_parser_18>, in file 'gtl_debugger_expression_parser.ggs', line 653
, END_PRODUCTION
// At index 395 : <select_gtl_5F_debugger_5F_expression_5F_parser_19>, in file 'gtl_debugger_expression_parser.ggs', line 654
, END_PRODUCTION
// At index 396 : <select_gtl_5F_debugger_5F_expression_5F_parser_19>, in file 'gtl_debugger_expression_parser.ggs', line 654
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_) // $,$
, NONTERMINAL (0) // <gtl_expression>
, NONTERMINAL (43) // <select_gtl_5F_debugger_5F_expression_5F_parser_19>
, END_PRODUCTION
// At index 400 : <select_gtl_5F_debugger_5F_expression_5F_parser_20>, in file 'gtl_debugger_expression_parser.ggs', line 671
, END_PRODUCTION
// At index 401 : <select_gtl_5F_debugger_5F_expression_5F_parser_20>, in file 'gtl_debugger_expression_parser.ggs', line 671
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3A_) // $::$
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier) // $identifier$
, NONTERMINAL (45) // <select_gtl_5F_debugger_5F_expression_5F_parser_21>
, NONTERMINAL (44) // <select_gtl_5F_debugger_5F_expression_5F_parser_20>
, END_PRODUCTION
// At index 406 : <select_gtl_5F_debugger_5F_expression_5F_parser_21>, in file 'gtl_debugger_expression_parser.ggs', line 673
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_) // $[$
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_) // $]$
, NONTERMINAL (46) // <select_gtl_5F_debugger_5F_expression_5F_parser_22>
, END_PRODUCTION
// At index 411 : <select_gtl_5F_debugger_5F_expression_5F_parser_21>, in file 'gtl_debugger_expression_parser.ggs', line 673
, END_PRODUCTION
// At index 412 : <select_gtl_5F_debugger_5F_expression_5F_parser_22>, in file 'gtl_debugger_expression_parser.ggs', line 678
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_) // $[$
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_) // $]$
, NONTERMINAL (47) // <select_gtl_5F_debugger_5F_expression_5F_parser_23>
, END_PRODUCTION
// At index 417 : <select_gtl_5F_debugger_5F_expression_5F_parser_22>, in file 'gtl_debugger_expression_parser.ggs', line 678
, END_PRODUCTION
// At index 418 : <select_gtl_5F_debugger_5F_expression_5F_parser_23>, in file 'gtl_debugger_expression_parser.ggs', line 683
, END_PRODUCTION
// At index 419 : <select_gtl_5F_debugger_5F_expression_5F_parser_23>, in file 'gtl_debugger_expression_parser.ggs', line 683
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_) // $[$
, NONTERMINAL (0) // <gtl_expression>
, TERMINAL (C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_) // $]$
, NONTERMINAL (47) // <select_gtl_5F_debugger_5F_expression_5F_parser_23>
, END_PRODUCTION
// At index 424 : <>, in file '.ggs', line 0
, NONTERMINAL (2) // <gtl_debugger_command>
, END_PRODUCTION
} ;

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                          P R O D U C T I O N    N A M E S                                            
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

static const cProductionNameDescriptor gProductionNames_gtl_debugger_grammar [154] = {
 {"<gtl_expression>", "gtl_debugger_expression_parser", 0}, // at index 0
 {"<gtl_variable>", "gtl_debugger_expression_parser", 3}, // at index 1
 {"<gtl_debugger_command>", "gtl_debugger_parser", 7}, // at index 2
 {"<gtl_debugger_command>", "gtl_debugger_parser", 9}, // at index 3
 {"<gtl_debugger_command>", "gtl_debugger_parser", 11}, // at index 4
 {"<gtl_debugger_command>", "gtl_debugger_parser", 13}, // at index 5
 {"<gtl_debugger_command>", "gtl_debugger_parser", 16}, // at index 6
 {"<gtl_debugger_command>", "gtl_debugger_parser", 18}, // at index 7
 {"<gtl_debugger_command>", "gtl_debugger_parser", 21}, // at index 8
 {"<gtl_debugger_command>", "gtl_debugger_parser", 24}, // at index 9
 {"<gtl_debugger_command>", "gtl_debugger_parser", 27}, // at index 10
 {"<gtl_debugger_command>", "gtl_debugger_parser", 28}, // at index 11
 {"<gtl_debugger_command>", "gtl_debugger_parser", 32}, // at index 12
 {"<gtl_debugger_command>", "gtl_debugger_parser", 35}, // at index 13
 {"<gtl_step_do_command>", "gtl_debugger_parser", 37}, // at index 14
 {"<gtl_step_do_command>", "gtl_debugger_parser", 39}, // at index 15
 {"<gtl_step_do_command>", "gtl_debugger_parser", 42}, // at index 16
 {"<gtl_step_do_command>", "gtl_debugger_parser", 45}, // at index 17
 {"<gtl_step_do_command>", "gtl_debugger_parser", 48}, // at index 18
 {"<gtl_step_do_command_list>", "gtl_debugger_parser", 57}, // at index 19
 {"<gtl_relation_term>", "gtl_debugger_expression_parser", 59}, // at index 20
 {"<gtl_relation_factor>", "gtl_debugger_expression_parser", 62}, // at index 21
 {"<gtl_simple_expression>", "gtl_debugger_expression_parser", 65}, // at index 22
 {"<gtl_term>", "gtl_debugger_expression_parser", 68}, // at index 23
 {"<gtl_factor>", "gtl_debugger_expression_parser", 71}, // at index 24
 {"<gtl_factor>", "gtl_debugger_expression_parser", 75}, // at index 25
 {"<gtl_factor>", "gtl_debugger_expression_parser", 78}, // at index 26
 {"<gtl_factor>", "gtl_debugger_expression_parser", 81}, // at index 27
 {"<gtl_factor>", "gtl_debugger_expression_parser", 84}, // at index 28
 {"<gtl_factor>", "gtl_debugger_expression_parser", 87}, // at index 29
 {"<gtl_factor>", "gtl_debugger_expression_parser", 89}, // at index 30
 {"<gtl_factor>", "gtl_debugger_expression_parser", 91}, // at index 31
 {"<gtl_factor>", "gtl_debugger_expression_parser", 93}, // at index 32
 {"<gtl_factor>", "gtl_debugger_expression_parser", 95}, // at index 33
 {"<gtl_factor>", "gtl_debugger_expression_parser", 97}, // at index 34
 {"<gtl_factor>", "gtl_debugger_expression_parser", 99}, // at index 35
 {"<gtl_factor>", "gtl_debugger_expression_parser", 105}, // at index 36
 {"<gtl_factor>", "gtl_debugger_expression_parser", 108}, // at index 37
 {"<gtl_factor>", "gtl_debugger_expression_parser", 112}, // at index 38
 {"<gtl_factor>", "gtl_debugger_expression_parser", 115}, // at index 39
 {"<gtl_factor>", "gtl_debugger_expression_parser", 117}, // at index 40
 {"<gtl_factor>", "gtl_debugger_expression_parser", 119}, // at index 41
 {"<gtl_factor>", "gtl_debugger_expression_parser", 121}, // at index 42
 {"<gtl_factor>", "gtl_debugger_expression_parser", 124}, // at index 43
 {"<gtl_factor>", "gtl_debugger_expression_parser", 126}, // at index 44
 {"<gtl_factor>", "gtl_debugger_expression_parser", 128}, // at index 45
 {"<gtl_factor>", "gtl_debugger_expression_parser", 132}, // at index 46
 {"<gtl_factor>", "gtl_debugger_expression_parser", 136}, // at index 47
 {"<gtl_factor>", "gtl_debugger_expression_parser", 140}, // at index 48
 {"<gtl_factor>", "gtl_debugger_expression_parser", 144}, // at index 49
 {"<gtl_factor>", "gtl_debugger_expression_parser", 148}, // at index 50
 {"<select_gtl_5F_debugger_5F_parser_0>", "gtl_debugger_parser", 152}, // at index 51
 {"<select_gtl_5F_debugger_5F_parser_0>", "gtl_debugger_parser", 154}, // at index 52
 {"<select_gtl_5F_debugger_5F_parser_1>", "gtl_debugger_parser", 156}, // at index 53
 {"<select_gtl_5F_debugger_5F_parser_1>", "gtl_debugger_parser", 158}, // at index 54
 {"<select_gtl_5F_debugger_5F_parser_2>", "gtl_debugger_parser", 160}, // at index 55
 {"<select_gtl_5F_debugger_5F_parser_2>", "gtl_debugger_parser", 163}, // at index 56
 {"<select_gtl_5F_debugger_5F_parser_2>", "gtl_debugger_parser", 165}, // at index 57
 {"<select_gtl_5F_debugger_5F_parser_2>", "gtl_debugger_parser", 167}, // at index 58
 {"<select_gtl_5F_debugger_5F_parser_3>", "gtl_debugger_parser", 168}, // at index 59
 {"<select_gtl_5F_debugger_5F_parser_3>", "gtl_debugger_parser", 170}, // at index 60
 {"<select_gtl_5F_debugger_5F_parser_4>", "gtl_debugger_parser", 172}, // at index 61
 {"<select_gtl_5F_debugger_5F_parser_4>", "gtl_debugger_parser", 178}, // at index 62
 {"<select_gtl_5F_debugger_5F_parser_5>", "gtl_debugger_parser", 180}, // at index 63
 {"<select_gtl_5F_debugger_5F_parser_5>", "gtl_debugger_parser", 183}, // at index 64
 {"<select_gtl_5F_debugger_5F_parser_5>", "gtl_debugger_parser", 187}, // at index 65
 {"<select_gtl_5F_debugger_5F_parser_6>", "gtl_debugger_parser", 188}, // at index 66
 {"<select_gtl_5F_debugger_5F_parser_6>", "gtl_debugger_parser", 190}, // at index 67
 {"<select_gtl_5F_debugger_5F_parser_7>", "gtl_debugger_parser", 192}, // at index 68
 {"<select_gtl_5F_debugger_5F_parser_7>", "gtl_debugger_parser", 194}, // at index 69
 {"<select_gtl_5F_debugger_5F_parser_7>", "gtl_debugger_parser", 197}, // at index 70
 {"<select_gtl_5F_debugger_5F_parser_8>", "gtl_debugger_parser", 198}, // at index 71
 {"<select_gtl_5F_debugger_5F_parser_8>", "gtl_debugger_parser", 200}, // at index 72
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 202}, // at index 73
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 205}, // at index 74
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 208}, // at index 75
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 211}, // at index 76
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 214}, // at index 77
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 217}, // at index 78
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 220}, // at index 79
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 223}, // at index 80
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 226}, // at index 81
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 229}, // at index 82
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 232}, // at index 83
 {"<select_gtl_5F_debugger_5F_parser_9>", "gtl_debugger_parser", 235}, // at index 84
 {"<select_gtl_5F_debugger_5F_parser_10>", "gtl_debugger_parser", 236}, // at index 85
 {"<select_gtl_5F_debugger_5F_parser_10>", "gtl_debugger_parser", 238}, // at index 86
 {"<select_gtl_5F_debugger_5F_parser_11>", "gtl_debugger_parser", 239}, // at index 87
 {"<select_gtl_5F_debugger_5F_parser_11>", "gtl_debugger_parser", 240}, // at index 88
 {"<select_gtl_5F_debugger_5F_parser_12>", "gtl_debugger_parser", 246}, // at index 89
 {"<select_gtl_5F_debugger_5F_parser_12>", "gtl_debugger_parser", 249}, // at index 90
 {"<select_gtl_5F_debugger_5F_parser_13>", "gtl_debugger_parser", 250}, // at index 91
 {"<select_gtl_5F_debugger_5F_parser_13>", "gtl_debugger_parser", 251}, // at index 92
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_0>", "gtl_debugger_expression_parser", 254}, // at index 93
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_0>", "gtl_debugger_expression_parser", 255}, // at index 94
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_0>", "gtl_debugger_expression_parser", 259}, // at index 95
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_1>", "gtl_debugger_expression_parser", 263}, // at index 96
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_1>", "gtl_debugger_expression_parser", 264}, // at index 97
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_2>", "gtl_debugger_expression_parser", 268}, // at index 98
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_2>", "gtl_debugger_expression_parser", 269}, // at index 99
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_2>", "gtl_debugger_expression_parser", 272}, // at index 100
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_2>", "gtl_debugger_expression_parser", 275}, // at index 101
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_2>", "gtl_debugger_expression_parser", 278}, // at index 102
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_2>", "gtl_debugger_expression_parser", 281}, // at index 103
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_2>", "gtl_debugger_expression_parser", 284}, // at index 104
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_3>", "gtl_debugger_expression_parser", 287}, // at index 105
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_3>", "gtl_debugger_expression_parser", 288}, // at index 106
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_3>", "gtl_debugger_expression_parser", 292}, // at index 107
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_3>", "gtl_debugger_expression_parser", 296}, // at index 108
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_3>", "gtl_debugger_expression_parser", 300}, // at index 109
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_3>", "gtl_debugger_expression_parser", 304}, // at index 110
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_4>", "gtl_debugger_expression_parser", 308}, // at index 111
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_4>", "gtl_debugger_expression_parser", 309}, // at index 112
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_4>", "gtl_debugger_expression_parser", 313}, // at index 113
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_4>", "gtl_debugger_expression_parser", 317}, // at index 114
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_5>", "gtl_debugger_expression_parser", 321}, // at index 115
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_5>", "gtl_debugger_expression_parser", 322}, // at index 116
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_6>", "gtl_debugger_expression_parser", 326}, // at index 117
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_6>", "gtl_debugger_expression_parser", 327}, // at index 118
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_7>", "gtl_debugger_expression_parser", 331}, // at index 119
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_7>", "gtl_debugger_expression_parser", 332}, // at index 120
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_8>", "gtl_debugger_expression_parser", 336}, // at index 121
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_8>", "gtl_debugger_expression_parser", 339}, // at index 122
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_9>", "gtl_debugger_expression_parser", 340}, // at index 123
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_9>", "gtl_debugger_expression_parser", 341}, // at index 124
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_10>", "gtl_debugger_expression_parser", 345}, // at index 125
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_10>", "gtl_debugger_expression_parser", 350}, // at index 126
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_11>", "gtl_debugger_expression_parser", 351}, // at index 127
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_11>", "gtl_debugger_expression_parser", 354}, // at index 128
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_12>", "gtl_debugger_expression_parser", 356}, // at index 129
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_12>", "gtl_debugger_expression_parser", 359}, // at index 130
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_13>", "gtl_debugger_expression_parser", 360}, // at index 131
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_13>", "gtl_debugger_expression_parser", 361}, // at index 132
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_14>", "gtl_debugger_expression_parser", 365}, // at index 133
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_14>", "gtl_debugger_expression_parser", 370}, // at index 134
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_15>", "gtl_debugger_expression_parser", 371}, // at index 135
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_15>", "gtl_debugger_expression_parser", 372}, // at index 136
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_16>", "gtl_debugger_expression_parser", 378}, // at index 137
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_16>", "gtl_debugger_expression_parser", 383}, // at index 138
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_17>", "gtl_debugger_expression_parser", 384}, // at index 139
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_17>", "gtl_debugger_expression_parser", 385}, // at index 140
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_18>", "gtl_debugger_expression_parser", 391}, // at index 141
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_18>", "gtl_debugger_expression_parser", 394}, // at index 142
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_19>", "gtl_debugger_expression_parser", 395}, // at index 143
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_19>", "gtl_debugger_expression_parser", 396}, // at index 144
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_20>", "gtl_debugger_expression_parser", 400}, // at index 145
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_20>", "gtl_debugger_expression_parser", 401}, // at index 146
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_21>", "gtl_debugger_expression_parser", 406}, // at index 147
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_21>", "gtl_debugger_expression_parser", 411}, // at index 148
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_22>", "gtl_debugger_expression_parser", 412}, // at index 149
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_22>", "gtl_debugger_expression_parser", 417}, // at index 150
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_23>", "gtl_debugger_expression_parser", 418}, // at index 151
 {"<select_gtl_5F_debugger_5F_expression_5F_parser_23>", "gtl_debugger_expression_parser", 419}, // at index 152
 {"<>", "", 424} // at index 153
} ;

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                 L L ( 1 )    P R O D U C T I O N    I N D E X E S                                    
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

static const int16_t gProductionIndexes_gtl_debugger_grammar [154] = {
0, // index 0 : <gtl_expression>, in file 'gtl_debugger_expression_parser.ggs', line 33
3, // index 1 : <gtl_variable>, in file 'gtl_debugger_expression_parser.ggs', line 667
7, // index 2 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 37
9, // index 3 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 52
11, // index 4 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 63
13, // index 5 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 74
16, // index 6 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 92
18, // index 7 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 103
21, // index 8 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 169
24, // index 9 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 207
27, // index 10 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 244
28, // index 11 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 254
32, // index 12 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 368
35, // index 13 : <gtl_debugger_command>, in file 'gtl_debugger_parser.ggs', line 381
37, // index 14 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 388
39, // index 15 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 400
42, // index 16 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 413
45, // index 17 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 427
48, // index 18 : <gtl_step_do_command>, in file 'gtl_debugger_parser.ggs', line 448
57, // index 19 : <gtl_step_do_command_list>, in file 'gtl_debugger_parser.ggs', line 481
59, // index 20 : <gtl_relation_term>, in file 'gtl_debugger_expression_parser.ggs', line 53
62, // index 21 : <gtl_relation_factor>, in file 'gtl_debugger_expression_parser.ggs', line 69
65, // index 22 : <gtl_simple_expression>, in file 'gtl_debugger_expression_parser.ggs', line 117
68, // index 23 : <gtl_term>, in file 'gtl_debugger_expression_parser.ggs', line 162
71, // index 24 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 192
75, // index 25 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 208
78, // index 26 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 220
81, // index 27 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 232
84, // index 28 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 244
87, // index 29 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 256
89, // index 30 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 269
91, // index 31 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 282
93, // index 32 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 295
95, // index 33 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 308
97, // index 34 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 321
99, // index 35 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 335
105, // index 36 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 369
108, // index 37 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 401
112, // index 38 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 420
115, // index 39 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 429
117, // index 40 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 445
119, // index 41 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 461
121, // index 42 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 477
124, // index 43 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 514
126, // index 44 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 533
128, // index 45 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 552
132, // index 46 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 576
136, // index 47 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 587
140, // index 48 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 606
144, // index 49 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 627
148, // index 50 : <gtl_factor>, in file 'gtl_debugger_expression_parser.ggs', line 648
152, // index 51 : <select_gtl_5F_debugger_5F_parser_0>, in file 'gtl_debugger_parser.ggs', line 40
154, // index 52 : <select_gtl_5F_debugger_5F_parser_0>, in file 'gtl_debugger_parser.ggs', line 40
156, // index 53 : <select_gtl_5F_debugger_5F_parser_1>, in file 'gtl_debugger_parser.ggs', line 79
158, // index 54 : <select_gtl_5F_debugger_5F_parser_1>, in file 'gtl_debugger_parser.ggs', line 79
160, // index 55 : <select_gtl_5F_debugger_5F_parser_2>, in file 'gtl_debugger_parser.ggs', line 107
163, // index 56 : <select_gtl_5F_debugger_5F_parser_2>, in file 'gtl_debugger_parser.ggs', line 107
165, // index 57 : <select_gtl_5F_debugger_5F_parser_2>, in file 'gtl_debugger_parser.ggs', line 107
167, // index 58 : <select_gtl_5F_debugger_5F_parser_2>, in file 'gtl_debugger_parser.ggs', line 107
168, // index 59 : <select_gtl_5F_debugger_5F_parser_3>, in file 'gtl_debugger_parser.ggs', line 109
170, // index 60 : <select_gtl_5F_debugger_5F_parser_3>, in file 'gtl_debugger_parser.ggs', line 109
172, // index 61 : <select_gtl_5F_debugger_5F_parser_4>, in file 'gtl_debugger_parser.ggs', line 124
178, // index 62 : <select_gtl_5F_debugger_5F_parser_4>, in file 'gtl_debugger_parser.ggs', line 124
180, // index 63 : <select_gtl_5F_debugger_5F_parser_5>, in file 'gtl_debugger_parser.ggs', line 173
183, // index 64 : <select_gtl_5F_debugger_5F_parser_5>, in file 'gtl_debugger_parser.ggs', line 173
187, // index 65 : <select_gtl_5F_debugger_5F_parser_5>, in file 'gtl_debugger_parser.ggs', line 173
188, // index 66 : <select_gtl_5F_debugger_5F_parser_6>, in file 'gtl_debugger_parser.ggs', line 175
190, // index 67 : <select_gtl_5F_debugger_5F_parser_6>, in file 'gtl_debugger_parser.ggs', line 175
192, // index 68 : <select_gtl_5F_debugger_5F_parser_7>, in file 'gtl_debugger_parser.ggs', line 212
194, // index 69 : <select_gtl_5F_debugger_5F_parser_7>, in file 'gtl_debugger_parser.ggs', line 212
197, // index 70 : <select_gtl_5F_debugger_5F_parser_7>, in file 'gtl_debugger_parser.ggs', line 212
198, // index 71 : <select_gtl_5F_debugger_5F_parser_8>, in file 'gtl_debugger_parser.ggs', line 221
200, // index 72 : <select_gtl_5F_debugger_5F_parser_8>, in file 'gtl_debugger_parser.ggs', line 221
202, // index 73 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
205, // index 74 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
208, // index 75 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
211, // index 76 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
214, // index 77 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
217, // index 78 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
220, // index 79 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
223, // index 80 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
226, // index 81 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
229, // index 82 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
232, // index 83 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
235, // index 84 : <select_gtl_5F_debugger_5F_parser_9>, in file 'gtl_debugger_parser.ggs', line 259
236, // index 85 : <select_gtl_5F_debugger_5F_parser_10>, in file 'gtl_debugger_parser.ggs', line 432
238, // index 86 : <select_gtl_5F_debugger_5F_parser_10>, in file 'gtl_debugger_parser.ggs', line 432
239, // index 87 : <select_gtl_5F_debugger_5F_parser_11>, in file 'gtl_debugger_parser.ggs', line 455
240, // index 88 : <select_gtl_5F_debugger_5F_parser_11>, in file 'gtl_debugger_parser.ggs', line 455
246, // index 89 : <select_gtl_5F_debugger_5F_parser_12>, in file 'gtl_debugger_parser.ggs', line 465
249, // index 90 : <select_gtl_5F_debugger_5F_parser_12>, in file 'gtl_debugger_parser.ggs', line 465
250, // index 91 : <select_gtl_5F_debugger_5F_parser_13>, in file 'gtl_debugger_parser.ggs', line 486
251, // index 92 : <select_gtl_5F_debugger_5F_parser_13>, in file 'gtl_debugger_parser.ggs', line 486
254, // index 93 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>, in file 'gtl_debugger_expression_parser.ggs', line 37
255, // index 94 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>, in file 'gtl_debugger_expression_parser.ggs', line 37
259, // index 95 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>, in file 'gtl_debugger_expression_parser.ggs', line 37
263, // index 96 : <select_gtl_5F_debugger_5F_expression_5F_parser_1>, in file 'gtl_debugger_expression_parser.ggs', line 57
264, // index 97 : <select_gtl_5F_debugger_5F_expression_5F_parser_1>, in file 'gtl_debugger_expression_parser.ggs', line 57
268, // index 98 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
269, // index 99 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
272, // index 100 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
275, // index 101 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
278, // index 102 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
281, // index 103 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
284, // index 104 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>, in file 'gtl_debugger_expression_parser.ggs', line 73
287, // index 105 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
288, // index 106 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
292, // index 107 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
296, // index 108 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
300, // index 109 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
304, // index 110 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>, in file 'gtl_debugger_expression_parser.ggs', line 121
308, // index 111 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>, in file 'gtl_debugger_expression_parser.ggs', line 166
309, // index 112 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>, in file 'gtl_debugger_expression_parser.ggs', line 166
313, // index 113 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>, in file 'gtl_debugger_expression_parser.ggs', line 166
317, // index 114 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>, in file 'gtl_debugger_expression_parser.ggs', line 166
321, // index 115 : <select_gtl_5F_debugger_5F_expression_5F_parser_5>, in file 'gtl_debugger_expression_parser.ggs', line 348
322, // index 116 : <select_gtl_5F_debugger_5F_expression_5F_parser_5>, in file 'gtl_debugger_expression_parser.ggs', line 348
326, // index 117 : <select_gtl_5F_debugger_5F_expression_5F_parser_6>, in file 'gtl_debugger_expression_parser.ggs', line 351
327, // index 118 : <select_gtl_5F_debugger_5F_expression_5F_parser_6>, in file 'gtl_debugger_expression_parser.ggs', line 351
331, // index 119 : <select_gtl_5F_debugger_5F_expression_5F_parser_7>, in file 'gtl_debugger_expression_parser.ggs', line 373
332, // index 120 : <select_gtl_5F_debugger_5F_expression_5F_parser_7>, in file 'gtl_debugger_expression_parser.ggs', line 373
336, // index 121 : <select_gtl_5F_debugger_5F_expression_5F_parser_8>, in file 'gtl_debugger_expression_parser.ggs', line 381
339, // index 122 : <select_gtl_5F_debugger_5F_expression_5F_parser_8>, in file 'gtl_debugger_expression_parser.ggs', line 381
340, // index 123 : <select_gtl_5F_debugger_5F_expression_5F_parser_9>, in file 'gtl_debugger_expression_parser.ggs', line 382
341, // index 124 : <select_gtl_5F_debugger_5F_expression_5F_parser_9>, in file 'gtl_debugger_expression_parser.ggs', line 382
345, // index 125 : <select_gtl_5F_debugger_5F_expression_5F_parser_10>, in file 'gtl_debugger_expression_parser.ggs', line 405
350, // index 126 : <select_gtl_5F_debugger_5F_expression_5F_parser_10>, in file 'gtl_debugger_expression_parser.ggs', line 405
351, // index 127 : <select_gtl_5F_debugger_5F_expression_5F_parser_11>, in file 'gtl_debugger_expression_parser.ggs', line 557
354, // index 128 : <select_gtl_5F_debugger_5F_expression_5F_parser_11>, in file 'gtl_debugger_expression_parser.ggs', line 557
356, // index 129 : <select_gtl_5F_debugger_5F_expression_5F_parser_12>, in file 'gtl_debugger_expression_parser.ggs', line 592
359, // index 130 : <select_gtl_5F_debugger_5F_expression_5F_parser_12>, in file 'gtl_debugger_expression_parser.ggs', line 592
360, // index 131 : <select_gtl_5F_debugger_5F_expression_5F_parser_13>, in file 'gtl_debugger_expression_parser.ggs', line 593
361, // index 132 : <select_gtl_5F_debugger_5F_expression_5F_parser_13>, in file 'gtl_debugger_expression_parser.ggs', line 593
365, // index 133 : <select_gtl_5F_debugger_5F_expression_5F_parser_14>, in file 'gtl_debugger_expression_parser.ggs', line 611
370, // index 134 : <select_gtl_5F_debugger_5F_expression_5F_parser_14>, in file 'gtl_debugger_expression_parser.ggs', line 611
371, // index 135 : <select_gtl_5F_debugger_5F_expression_5F_parser_15>, in file 'gtl_debugger_expression_parser.ggs', line 612
372, // index 136 : <select_gtl_5F_debugger_5F_expression_5F_parser_15>, in file 'gtl_debugger_expression_parser.ggs', line 612
378, // index 137 : <select_gtl_5F_debugger_5F_expression_5F_parser_16>, in file 'gtl_debugger_expression_parser.ggs', line 632
383, // index 138 : <select_gtl_5F_debugger_5F_expression_5F_parser_16>, in file 'gtl_debugger_expression_parser.ggs', line 632
384, // index 139 : <select_gtl_5F_debugger_5F_expression_5F_parser_17>, in file 'gtl_debugger_expression_parser.ggs', line 633
385, // index 140 : <select_gtl_5F_debugger_5F_expression_5F_parser_17>, in file 'gtl_debugger_expression_parser.ggs', line 633
391, // index 141 : <select_gtl_5F_debugger_5F_expression_5F_parser_18>, in file 'gtl_debugger_expression_parser.ggs', line 653
394, // index 142 : <select_gtl_5F_debugger_5F_expression_5F_parser_18>, in file 'gtl_debugger_expression_parser.ggs', line 653
395, // index 143 : <select_gtl_5F_debugger_5F_expression_5F_parser_19>, in file 'gtl_debugger_expression_parser.ggs', line 654
396, // index 144 : <select_gtl_5F_debugger_5F_expression_5F_parser_19>, in file 'gtl_debugger_expression_parser.ggs', line 654
400, // index 145 : <select_gtl_5F_debugger_5F_expression_5F_parser_20>, in file 'gtl_debugger_expression_parser.ggs', line 671
401, // index 146 : <select_gtl_5F_debugger_5F_expression_5F_parser_20>, in file 'gtl_debugger_expression_parser.ggs', line 671
406, // index 147 : <select_gtl_5F_debugger_5F_expression_5F_parser_21>, in file 'gtl_debugger_expression_parser.ggs', line 673
411, // index 148 : <select_gtl_5F_debugger_5F_expression_5F_parser_21>, in file 'gtl_debugger_expression_parser.ggs', line 673
412, // index 149 : <select_gtl_5F_debugger_5F_expression_5F_parser_22>, in file 'gtl_debugger_expression_parser.ggs', line 678
417, // index 150 : <select_gtl_5F_debugger_5F_expression_5F_parser_22>, in file 'gtl_debugger_expression_parser.ggs', line 678
418, // index 151 : <select_gtl_5F_debugger_5F_expression_5F_parser_23>, in file 'gtl_debugger_expression_parser.ggs', line 683
419, // index 152 : <select_gtl_5F_debugger_5F_expression_5F_parser_23>, in file 'gtl_debugger_expression_parser.ggs', line 683
424 // index 153 : <>, in file '.ggs', line 0
} ;

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                           L L ( 1 )    F I R S T    P R O D U C T I O N    I N D E X E S                             
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

static const int16_t gFirstProductionIndexes_gtl_debugger_grammar [50] = {
0, // at 0 : <gtl_expression>
1, // at 1 : <gtl_variable>
2, // at 2 : <gtl_debugger_command>
14, // at 3 : <gtl_step_do_command>
19, // at 4 : <gtl_step_do_command_list>
20, // at 5 : <gtl_relation_term>
21, // at 6 : <gtl_relation_factor>
22, // at 7 : <gtl_simple_expression>
23, // at 8 : <gtl_term>
24, // at 9 : <gtl_factor>
51, // at 10 : <select_gtl_5F_debugger_5F_parser_0>
53, // at 11 : <select_gtl_5F_debugger_5F_parser_1>
55, // at 12 : <select_gtl_5F_debugger_5F_parser_2>
59, // at 13 : <select_gtl_5F_debugger_5F_parser_3>
61, // at 14 : <select_gtl_5F_debugger_5F_parser_4>
63, // at 15 : <select_gtl_5F_debugger_5F_parser_5>
66, // at 16 : <select_gtl_5F_debugger_5F_parser_6>
68, // at 17 : <select_gtl_5F_debugger_5F_parser_7>
71, // at 18 : <select_gtl_5F_debugger_5F_parser_8>
73, // at 19 : <select_gtl_5F_debugger_5F_parser_9>
85, // at 20 : <select_gtl_5F_debugger_5F_parser_10>
87, // at 21 : <select_gtl_5F_debugger_5F_parser_11>
89, // at 22 : <select_gtl_5F_debugger_5F_parser_12>
91, // at 23 : <select_gtl_5F_debugger_5F_parser_13>
93, // at 24 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>
96, // at 25 : <select_gtl_5F_debugger_5F_expression_5F_parser_1>
98, // at 26 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>
105, // at 27 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>
111, // at 28 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>
115, // at 29 : <select_gtl_5F_debugger_5F_expression_5F_parser_5>
117, // at 30 : <select_gtl_5F_debugger_5F_expression_5F_parser_6>
119, // at 31 : <select_gtl_5F_debugger_5F_expression_5F_parser_7>
121, // at 32 : <select_gtl_5F_debugger_5F_expression_5F_parser_8>
123, // at 33 : <select_gtl_5F_debugger_5F_expression_5F_parser_9>
125, // at 34 : <select_gtl_5F_debugger_5F_expression_5F_parser_10>
127, // at 35 : <select_gtl_5F_debugger_5F_expression_5F_parser_11>
129, // at 36 : <select_gtl_5F_debugger_5F_expression_5F_parser_12>
131, // at 37 : <select_gtl_5F_debugger_5F_expression_5F_parser_13>
133, // at 38 : <select_gtl_5F_debugger_5F_expression_5F_parser_14>
135, // at 39 : <select_gtl_5F_debugger_5F_expression_5F_parser_15>
137, // at 40 : <select_gtl_5F_debugger_5F_expression_5F_parser_16>
139, // at 41 : <select_gtl_5F_debugger_5F_expression_5F_parser_17>
141, // at 42 : <select_gtl_5F_debugger_5F_expression_5F_parser_18>
143, // at 43 : <select_gtl_5F_debugger_5F_expression_5F_parser_19>
145, // at 44 : <select_gtl_5F_debugger_5F_expression_5F_parser_20>
147, // at 45 : <select_gtl_5F_debugger_5F_expression_5F_parser_21>
149, // at 46 : <select_gtl_5F_debugger_5F_expression_5F_parser_22>
151, // at 47 : <select_gtl_5F_debugger_5F_expression_5F_parser_23>
153, // at 48 : <>
0} ;

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                    L L ( 1 )    D E C I S I O N    T A B L E S                                       
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

static const int16_t gDecision_gtl_debugger_grammar [] = {
// At index 0 : <gtl_expression> only one production, no choice
  -1,
// At index 1 : <gtl_variable> only one production, no choice
  -1,
// At index 2 : <gtl_debugger_command>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_cont, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_continue, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_help, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_step, -1, // Choice 3
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_load, -1, // Choice 4
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_hist, -1, // Choice 5
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_break, -1, // Choice 6
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_watch, -1, // Choice 7
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_do, -1, // Choice 8
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 9
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_let, -1, // Choice 10
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_unlet, -1, // Choice 11
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, -1, // Choice 12
  -1,
// At index 32 : <gtl_step_do_command>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, -1, // Choice 3
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, -1, // Choice 4
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, -1, // Choice 5
  -1,
// At index 43 : <gtl_step_do_command_list> only one production, no choice
  -1,
// At index 44 : <gtl_relation_term> only one production, no choice
  -1,
// At index 45 : <gtl_relation_factor> only one production, no choice
  -1,
// At index 46 : <gtl_simple_expression> only one production, no choice
  -1,
// At index 47 : <gtl_term> only one production, no choice
  -1,
// At index 48 : <gtl_factor>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7E_, -1, // Choice 3
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, -1, // Choice 4
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, -1, // Choice 5
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_yes, -1, // Choice 6
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_no, -1, // Choice 7
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, -1, // Choice 8
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_double, -1, // Choice 9
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string, -1, // Choice 10
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_char, -1, // Choice 11
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_, -1, // Choice 12
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, -1, // Choice 13
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_exists, -1, // Choice 14
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_typeof, -1, // Choice 15
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_true, -1, // Choice 16
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_false, -1, // Choice 17
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_enum, -1, // Choice 18
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40_, -1, // Choice 19
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptylist, -1, // Choice 20
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptymap, -1, // Choice 21
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mapof, -1, // Choice 22
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_listof, -1, // Choice 23
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__28_, -1, // Choice 24
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__5B_, -1, // Choice 25
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__7B_, -1, // Choice 26
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__21_, -1, // Choice 27
  -1,
//---- Added non terminal symbols from 'select' and 'repeat' instructions
// At index 103 : <select_gtl_5F_debugger_5F_parser_0>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_cont, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_continue, -1, // Choice 2
  -1,
// At index 108 : <select_gtl_5F_debugger_5F_parser_1>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string, -1, // Choice 2
  -1,
// At index 113 : <select_gtl_5F_debugger_5F_parser_2>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string, -1, // Choice 3
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 4
  -1,
// At index 123 : <select_gtl_5F_debugger_5F_parser_3>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_all, -1, // Choice 2
  -1,
// At index 128 : <select_gtl_5F_debugger_5F_parser_4>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, -1, // Choice 2
  -1,
// At index 133 : <select_gtl_5F_debugger_5F_parser_5>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 3
  -1,
// At index 140 : <select_gtl_5F_debugger_5F_parser_6>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_all, -1, // Choice 2
  -1,
// At index 145 : <select_gtl_5F_debugger_5F_parser_7>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 3
  -1,
// At index 156 : <select_gtl_5F_debugger_5F_parser_8>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_all, -1, // Choice 2
  -1,
// At index 161 : <select_gtl_5F_debugger_5F_parser_9>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3D_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B__3D_, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D__3D_, -1, // Choice 3
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A__3D_, -1, // Choice 4
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F__3D_, -1, // Choice 5
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod_3D_, -1, // Choice 6
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C__3D_, -1, // Choice 7
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E__3D_, -1, // Choice 8
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26__3D_, -1, // Choice 9
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C__3D_, -1, // Choice 10
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E__3D_, -1, // Choice 11
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 12
  -1,
// At index 186 : <select_gtl_5F_debugger_5F_parser_10>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 2
  -1,
// At index 199 : <select_gtl_5F_debugger_5F_parser_11>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, -1, // Choice 2
  -1,
// At index 205 : <select_gtl_5F_debugger_5F_parser_12>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, -1, // Choice 2
  -1,
// At index 210 : <select_gtl_5F_debugger_5F_parser_13>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, -1, // Choice 2
  -1,
// At index 221 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, -1, // Choice 3
  -1,
// At index 244 : <select_gtl_5F_debugger_5F_expression_5F_parser_1>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, -1, // Choice 2
  -1,
// At index 267 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, -1, // Choice 3
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, -1, // Choice 4
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, -1, // Choice 5
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, -1, // Choice 6
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, -1, // Choice 7
  -1,
// At index 301 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_, -1, // Choice 3
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, -1, // Choice 4
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_, -1, // Choice 5
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, -1, // Choice 6
  -1,
// At index 339 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A_, -1, // Choice 2
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F_, -1, // Choice 3
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod, -1, // Choice 4
  -1,
// At index 378 : <select_gtl_5F_debugger_5F_expression_5F_parser_5>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A_, -1, // Choice 2
  -1,
// At index 383 : <select_gtl_5F_debugger_5F_expression_5F_parser_6>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, -1, // Choice 2
  -1,
// At index 388 : <select_gtl_5F_debugger_5F_expression_5F_parser_7>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, -1, // Choice 2
  -1,
// At index 426 : <select_gtl_5F_debugger_5F_expression_5F_parser_8>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_yes, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_no, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_double, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_char, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_exists, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_typeof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_true, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_false, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_enum, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptylist, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptymap, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mapof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_listof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__5B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__7B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__21_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, -1, // Choice 2
  -1,
// At index 457 : <select_gtl_5F_debugger_5F_expression_5F_parser_9>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, -1, // Choice 2
  -1,
// At index 462 : <select_gtl_5F_debugger_5F_expression_5F_parser_10>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_default, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 2
  -1,
// At index 500 : <select_gtl_5F_debugger_5F_expression_5F_parser_11>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, -1, // Choice 2
  -1,
// At index 505 : <select_gtl_5F_debugger_5F_expression_5F_parser_12>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_yes, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_no, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_double, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_char, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_exists, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_typeof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_true, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_false, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_enum, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptylist, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptymap, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mapof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_listof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__5B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__7B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__21_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, -1, // Choice 2
  -1,
// At index 536 : <select_gtl_5F_debugger_5F_expression_5F_parser_13>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, -1, // Choice 2
  -1,
// At index 541 : <select_gtl_5F_debugger_5F_expression_5F_parser_14>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, -1, // Choice 2
  -1,
// At index 546 : <select_gtl_5F_debugger_5F_expression_5F_parser_15>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, -1, // Choice 2
  -1,
// At index 551 : <select_gtl_5F_debugger_5F_expression_5F_parser_16>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, -1, // Choice 2
  -1,
// At index 556 : <select_gtl_5F_debugger_5F_expression_5F_parser_17>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, -1, // Choice 2
  -1,
// At index 561 : <select_gtl_5F_debugger_5F_expression_5F_parser_18>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_string, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_not, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_signed_5F_literal_5F_integer_5F_bigint, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_yes, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_no, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_double, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_char, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_exists, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_typeof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_true, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_false, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_literal_5F_enum, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptylist, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_emptymap, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mapof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_listof, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__5B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__7B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__40__21_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, -1, // Choice 2
  -1,
// At index 592 : <select_gtl_5F_debugger_5F_expression_5F_parser_19>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, -1, // Choice 2
  -1,
// At index 597 : <select_gtl_5F_debugger_5F_expression_5F_parser_20>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod_3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_default, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3A_, -1, // Choice 2
  -1,
// At index 648 : <select_gtl_5F_debugger_5F_expression_5F_parser_21>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod_3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_default, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 2
  -1,
// At index 700 : <select_gtl_5F_debugger_5F_expression_5F_parser_22>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod_3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_default, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 2
  -1,
// At index 752 : <select_gtl_5F_debugger_5F_expression_5F_parser_23>
C_Lexique_gtl_5F_debugger_5F_scanner::kToken_identifier, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__28_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__29_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod_3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_variables, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_display, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_print, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_list, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_if, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_then, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_elsif, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_else, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_end, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__26_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3D__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3C__3C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3E__3E_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2B_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2F_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_mod, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__2C_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_default, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_by, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__7D_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__21_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken__3A__3A_, C_Lexique_gtl_5F_debugger_5F_scanner::kToken_, -1, // Choice 1
C_Lexique_gtl_5F_debugger_5F_scanner::kToken__5B_, -1, // Choice 2
  -1,
// At index 804 : <> only one production, no choice
  -1,
0} ;

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                            L L ( 1 )    D E C I S I O N    T A B L E S    I N D E X E S                              
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

static const int16_t gDecisionIndexes_gtl_debugger_grammar [50] = {
0, // at 0 : <gtl_expression>
1, // at 1 : <gtl_variable>
2, // at 2 : <gtl_debugger_command>
32, // at 3 : <gtl_step_do_command>
43, // at 4 : <gtl_step_do_command_list>
44, // at 5 : <gtl_relation_term>
45, // at 6 : <gtl_relation_factor>
46, // at 7 : <gtl_simple_expression>
47, // at 8 : <gtl_term>
48, // at 9 : <gtl_factor>
103, // at 10 : <select_gtl_5F_debugger_5F_parser_0>
108, // at 11 : <select_gtl_5F_debugger_5F_parser_1>
113, // at 12 : <select_gtl_5F_debugger_5F_parser_2>
123, // at 13 : <select_gtl_5F_debugger_5F_parser_3>
128, // at 14 : <select_gtl_5F_debugger_5F_parser_4>
133, // at 15 : <select_gtl_5F_debugger_5F_parser_5>
140, // at 16 : <select_gtl_5F_debugger_5F_parser_6>
145, // at 17 : <select_gtl_5F_debugger_5F_parser_7>
156, // at 18 : <select_gtl_5F_debugger_5F_parser_8>
161, // at 19 : <select_gtl_5F_debugger_5F_parser_9>
186, // at 20 : <select_gtl_5F_debugger_5F_parser_10>
199, // at 21 : <select_gtl_5F_debugger_5F_parser_11>
205, // at 22 : <select_gtl_5F_debugger_5F_parser_12>
210, // at 23 : <select_gtl_5F_debugger_5F_parser_13>
221, // at 24 : <select_gtl_5F_debugger_5F_expression_5F_parser_0>
244, // at 25 : <select_gtl_5F_debugger_5F_expression_5F_parser_1>
267, // at 26 : <select_gtl_5F_debugger_5F_expression_5F_parser_2>
301, // at 27 : <select_gtl_5F_debugger_5F_expression_5F_parser_3>
339, // at 28 : <select_gtl_5F_debugger_5F_expression_5F_parser_4>
378, // at 29 : <select_gtl_5F_debugger_5F_expression_5F_parser_5>
383, // at 30 : <select_gtl_5F_debugger_5F_expression_5F_parser_6>
388, // at 31 : <select_gtl_5F_debugger_5F_expression_5F_parser_7>
426, // at 32 : <select_gtl_5F_debugger_5F_expression_5F_parser_8>
457, // at 33 : <select_gtl_5F_debugger_5F_expression_5F_parser_9>
462, // at 34 : <select_gtl_5F_debugger_5F_expression_5F_parser_10>
500, // at 35 : <select_gtl_5F_debugger_5F_expression_5F_parser_11>
505, // at 36 : <select_gtl_5F_debugger_5F_expression_5F_parser_12>
536, // at 37 : <select_gtl_5F_debugger_5F_expression_5F_parser_13>
541, // at 38 : <select_gtl_5F_debugger_5F_expression_5F_parser_14>
546, // at 39 : <select_gtl_5F_debugger_5F_expression_5F_parser_15>
551, // at 40 : <select_gtl_5F_debugger_5F_expression_5F_parser_16>
556, // at 41 : <select_gtl_5F_debugger_5F_expression_5F_parser_17>
561, // at 42 : <select_gtl_5F_debugger_5F_expression_5F_parser_18>
592, // at 43 : <select_gtl_5F_debugger_5F_expression_5F_parser_19>
597, // at 44 : <select_gtl_5F_debugger_5F_expression_5F_parser_20>
648, // at 45 : <select_gtl_5F_debugger_5F_expression_5F_parser_21>
700, // at 46 : <select_gtl_5F_debugger_5F_expression_5F_parser_22>
752, // at 47 : <select_gtl_5F_debugger_5F_expression_5F_parser_23>
804, // at 48 : <>
0} ;

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                    'gtl_expression' non terminal implementation                                      
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_expression_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_expression_i0_parse(inLexique) ;
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_expression_ (GALGAS_gtlExpression & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_expression_i0_(parameter_1, inLexique) ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                     'gtl_variable' non terminal implementation                                       
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_variable_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_variable_i32_parse(inLexique) ;
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_variable_ (GALGAS_gtlVarPath & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_variable_i32_(parameter_1, inLexique) ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                 'gtl_debugger_command' non terminal implementation                                   
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_debugger_5F_command_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  switch (inLexique->nextProductionIndex ()) {
  case 1 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i0_parse(inLexique) ;
    break ;
  case 2 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i1_parse(inLexique) ;
    break ;
  case 3 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i2_parse(inLexique) ;
    break ;
  case 4 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i3_parse(inLexique) ;
    break ;
  case 5 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i4_parse(inLexique) ;
    break ;
  case 6 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i5_parse(inLexique) ;
    break ;
  case 7 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i6_parse(inLexique) ;
    break ;
  case 8 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i7_parse(inLexique) ;
    break ;
  case 9 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i8_parse(inLexique) ;
    break ;
  case 10 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i9_parse(inLexique) ;
    break ;
  case 11 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i10_parse(inLexique) ;
    break ;
  case 12 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i11_parse(inLexique) ;
    break ;
  default :
    break ;
  }
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_debugger_5F_command_ (GALGAS_gtlInstruction & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  switch (inLexique->nextProductionIndex ()) {
  case 1 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i0_(parameter_1, inLexique) ;
    break ;
  case 2 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i1_(parameter_1, inLexique) ;
    break ;
  case 3 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i2_(parameter_1, inLexique) ;
    break ;
  case 4 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i3_(parameter_1, inLexique) ;
    break ;
  case 5 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i4_(parameter_1, inLexique) ;
    break ;
  case 6 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i5_(parameter_1, inLexique) ;
    break ;
  case 7 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i6_(parameter_1, inLexique) ;
    break ;
  case 8 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i7_(parameter_1, inLexique) ;
    break ;
  case 9 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i8_(parameter_1, inLexique) ;
    break ;
  case 10 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i9_(parameter_1, inLexique) ;
    break ;
  case 11 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i10_(parameter_1, inLexique) ;
    break ;
  case 12 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_debugger_5F_command_i11_(parameter_1, inLexique) ;
    break ;
  default :
    break ;
  }
}

void cGrammar_gtl_5F_debugger_5F_grammar::performIndexing (C_Compiler * /* inCompiler */,
             const C_String & /* inSourceFilePath */) {
}

void cGrammar_gtl_5F_debugger_5F_grammar::performOnlyLexicalAnalysis (C_Compiler * inCompiler,
             const C_String & inSourceFilePath) {
  C_Lexique_gtl_5F_debugger_5F_scanner * scanner = NULL ;
  macroMyNew (scanner, C_Lexique_gtl_5F_debugger_5F_scanner (inCompiler, inSourceFilePath COMMA_HERE)) ;
  if (scanner->sourceText ().isValid ()) {
    scanner->performLexicalAnalysis () ;
  }
  macroDetachSharedObject (scanner) ;
}

void cGrammar_gtl_5F_debugger_5F_grammar::performOnlySyntaxAnalysis (C_Compiler * inCompiler,
             const C_String & inSourceFilePath) {
  C_Lexique_gtl_5F_debugger_5F_scanner * scanner = NULL ;
  macroMyNew (scanner, C_Lexique_gtl_5F_debugger_5F_scanner (inCompiler, inSourceFilePath COMMA_HERE)) ;
  if (scanner->sourceText ().isValid ()) {
    scanner->performTopDownParsing (gProductions_gtl_debugger_grammar, gProductionNames_gtl_debugger_grammar, gProductionIndexes_gtl_debugger_grammar,
                                    gFirstProductionIndexes_gtl_debugger_grammar, gDecision_gtl_debugger_grammar, gDecisionIndexes_gtl_debugger_grammar, 424) ;
  }
  macroDetachSharedObject (scanner) ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                        Grammar start symbol implementation                                           
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::_performSourceFileParsing_ (C_Compiler * inCompiler,
                                GALGAS_lstring inFilePath,
                                GALGAS_gtlInstruction &  parameter_1
                                COMMA_LOCATION_ARGS) {
  if (inFilePath.isValid ()) {
    const GALGAS_string filePathAsString = inFilePath.getter_string (HERE) ;
    C_String filePath = filePathAsString.stringValue () ;
    if (! C_FileManager::isAbsolutePath (filePath)) {
      filePath = inCompiler->sourceFilePath ().stringByDeletingLastPathComponent ().stringByAppendingPathComponent (filePath) ;
    }
    if (C_FileManager::fileExistsAtPath (filePath)) {
    C_Lexique_gtl_5F_debugger_5F_scanner * scanner = NULL ;
    macroMyNew (scanner, C_Lexique_gtl_5F_debugger_5F_scanner (inCompiler, filePath COMMA_HERE)) ;
    if (scanner->sourceText ().isValid ()) {
      const bool ok = scanner->performTopDownParsing (gProductions_gtl_debugger_grammar, gProductionNames_gtl_debugger_grammar, gProductionIndexes_gtl_debugger_grammar,
                                                      gFirstProductionIndexes_gtl_debugger_grammar, gDecision_gtl_debugger_grammar, gDecisionIndexes_gtl_debugger_grammar, 424) ;
      if (ok && ! executionModeIsSyntaxAnalysisOnly ()) {
        cGrammar_gtl_5F_debugger_5F_grammar grammar ;
        grammar.nt_gtl_5F_debugger_5F_command_ (parameter_1, scanner) ;
        }
      }else{
        C_String message ;
        message << "the '" << filePath << "' file exists, but cannot be read" ;
        const GALGAS_location errorLocation (inFilePath.getter_location (THERE)) ;
        inCompiler->semanticErrorAtLocation (errorLocation, message, TC_Array <C_FixItDescription> () COMMA_THERE) ;
      }
      macroDetachSharedObject (scanner) ;
    }else{
      C_String message ;
      message << "the '" << filePath << "' file does not exist" ;
      const GALGAS_location errorLocation (inFilePath.getter_location (THERE)) ;
      inCompiler->semanticErrorAtLocation (errorLocation, message, TC_Array <C_FixItDescription> () COMMA_THERE) ;
    }
  }
}

//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::_performSourceStringParsing_ (C_Compiler * inCompiler,
                                GALGAS_string inSourceString,
                                GALGAS_string inNameString,
                                GALGAS_gtlInstruction &  parameter_1
                                COMMA_UNUSED_LOCATION_ARGS) {
  if (inSourceString.isValid () && inNameString.isValid ()) {
    const C_String sourceString = inSourceString.stringValue () ;
    const C_String nameString = inNameString.stringValue () ;
    C_Lexique_gtl_5F_debugger_5F_scanner * scanner = NULL ;
    macroMyNew (scanner, C_Lexique_gtl_5F_debugger_5F_scanner (inCompiler, sourceString, nameString COMMA_HERE)) ;
    const bool ok = scanner->performTopDownParsing (gProductions_gtl_debugger_grammar, gProductionNames_gtl_debugger_grammar, gProductionIndexes_gtl_debugger_grammar,
                                                    gFirstProductionIndexes_gtl_debugger_grammar, gDecision_gtl_debugger_grammar, gDecisionIndexes_gtl_debugger_grammar, 424) ;
    if (ok && ! executionModeIsSyntaxAnalysisOnly ()) {
      cGrammar_gtl_5F_debugger_5F_grammar grammar ;
      grammar.nt_gtl_5F_debugger_5F_command_ (parameter_1, scanner) ;
    }
    macroDetachSharedObject (scanner) ;
  }
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                 'gtl_step_do_command' non terminal implementation                                    
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_step_5F_do_5F_command_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  switch (inLexique->nextProductionIndex ()) {
  case 1 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i12_parse(inLexique) ;
    break ;
  case 2 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i13_parse(inLexique) ;
    break ;
  case 3 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i14_parse(inLexique) ;
    break ;
  case 4 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i15_parse(inLexique) ;
    break ;
  case 5 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i16_parse(inLexique) ;
    break ;
  default :
    break ;
  }
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_step_5F_do_5F_command_ (GALGAS_gtlInstruction & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  switch (inLexique->nextProductionIndex ()) {
  case 1 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i12_(parameter_1, inLexique) ;
    break ;
  case 2 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i13_(parameter_1, inLexique) ;
    break ;
  case 3 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i14_(parameter_1, inLexique) ;
    break ;
  case 4 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i15_(parameter_1, inLexique) ;
    break ;
  case 5 :
    rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_i16_(parameter_1, inLexique) ;
    break ;
  default :
    break ;
  }
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                               'gtl_step_do_command_list' non terminal implementation                                 
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_step_5F_do_5F_command_5F_list_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_5F_list_i17_parse(inLexique) ;
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_step_5F_do_5F_command_5F_list_ (GALGAS_gtlInstructionList & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_parser_gtl_5F_step_5F_do_5F_command_5F_list_i17_(parameter_1, inLexique) ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                  'gtl_relation_term' non terminal implementation                                     
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_relation_5F_term_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_relation_5F_term_i1_parse(inLexique) ;
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_relation_5F_term_ (GALGAS_gtlExpression & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_relation_5F_term_i1_(parameter_1, inLexique) ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                 'gtl_relation_factor' non terminal implementation                                    
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_relation_5F_factor_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_relation_5F_factor_i2_parse(inLexique) ;
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_relation_5F_factor_ (GALGAS_gtlExpression & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_relation_5F_factor_i2_(parameter_1, inLexique) ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                'gtl_simple_expression' non terminal implementation                                   
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_simple_5F_expression_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_simple_5F_expression_i3_parse(inLexique) ;
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_simple_5F_expression_ (GALGAS_gtlExpression & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_simple_5F_expression_i3_(parameter_1, inLexique) ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                       'gtl_term' non terminal implementation                                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_term_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_term_i4_parse(inLexique) ;
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_term_ (GALGAS_gtlExpression & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_term_i4_(parameter_1, inLexique) ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                                      'gtl_factor' non terminal implementation                                        
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_factor_parse (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  switch (inLexique->nextProductionIndex ()) {
  case 1 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i5_parse(inLexique) ;
    break ;
  case 2 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i6_parse(inLexique) ;
    break ;
  case 3 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i7_parse(inLexique) ;
    break ;
  case 4 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i8_parse(inLexique) ;
    break ;
  case 5 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i9_parse(inLexique) ;
    break ;
  case 6 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i10_parse(inLexique) ;
    break ;
  case 7 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i11_parse(inLexique) ;
    break ;
  case 8 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i12_parse(inLexique) ;
    break ;
  case 9 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i13_parse(inLexique) ;
    break ;
  case 10 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i14_parse(inLexique) ;
    break ;
  case 11 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i15_parse(inLexique) ;
    break ;
  case 12 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i16_parse(inLexique) ;
    break ;
  case 13 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i17_parse(inLexique) ;
    break ;
  case 14 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i18_parse(inLexique) ;
    break ;
  case 15 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i19_parse(inLexique) ;
    break ;
  case 16 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i20_parse(inLexique) ;
    break ;
  case 17 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i21_parse(inLexique) ;
    break ;
  case 18 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i22_parse(inLexique) ;
    break ;
  case 19 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i23_parse(inLexique) ;
    break ;
  case 20 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i24_parse(inLexique) ;
    break ;
  case 21 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i25_parse(inLexique) ;
    break ;
  case 22 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i26_parse(inLexique) ;
    break ;
  case 23 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i27_parse(inLexique) ;
    break ;
  case 24 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i28_parse(inLexique) ;
    break ;
  case 25 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i29_parse(inLexique) ;
    break ;
  case 26 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i30_parse(inLexique) ;
    break ;
  case 27 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i31_parse(inLexique) ;
    break ;
  default :
    break ;
  }
}

void cGrammar_gtl_5F_debugger_5F_grammar::nt_gtl_5F_factor_ (GALGAS_gtlExpression & parameter_1,
                                C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  switch (inLexique->nextProductionIndex ()) {
  case 1 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i5_(parameter_1, inLexique) ;
    break ;
  case 2 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i6_(parameter_1, inLexique) ;
    break ;
  case 3 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i7_(parameter_1, inLexique) ;
    break ;
  case 4 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i8_(parameter_1, inLexique) ;
    break ;
  case 5 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i9_(parameter_1, inLexique) ;
    break ;
  case 6 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i10_(parameter_1, inLexique) ;
    break ;
  case 7 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i11_(parameter_1, inLexique) ;
    break ;
  case 8 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i12_(parameter_1, inLexique) ;
    break ;
  case 9 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i13_(parameter_1, inLexique) ;
    break ;
  case 10 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i14_(parameter_1, inLexique) ;
    break ;
  case 11 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i15_(parameter_1, inLexique) ;
    break ;
  case 12 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i16_(parameter_1, inLexique) ;
    break ;
  case 13 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i17_(parameter_1, inLexique) ;
    break ;
  case 14 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i18_(parameter_1, inLexique) ;
    break ;
  case 15 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i19_(parameter_1, inLexique) ;
    break ;
  case 16 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i20_(parameter_1, inLexique) ;
    break ;
  case 17 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i21_(parameter_1, inLexique) ;
    break ;
  case 18 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i22_(parameter_1, inLexique) ;
    break ;
  case 19 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i23_(parameter_1, inLexique) ;
    break ;
  case 20 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i24_(parameter_1, inLexique) ;
    break ;
  case 21 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i25_(parameter_1, inLexique) ;
    break ;
  case 22 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i26_(parameter_1, inLexique) ;
    break ;
  case 23 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i27_(parameter_1, inLexique) ;
    break ;
  case 24 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i28_(parameter_1, inLexique) ;
    break ;
  case 25 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i29_(parameter_1, inLexique) ;
    break ;
  case 26 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i30_(parameter_1, inLexique) ;
    break ;
  case 27 :
    rule_gtl_5F_debugger_5F_expression_5F_parser_gtl_5F_factor_i31_(parameter_1, inLexique) ;
    break ;
  default :
    break ;
  }
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_0' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_0 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_1' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_1 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_2' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_2 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_3' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_3 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_4' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_4 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_5' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_5 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_6' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_6 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_7' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_7 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_8' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_8 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                       'select_gtl_5F_debugger_5F_parser_9' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_9 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                      'select_gtl_5F_debugger_5F_parser_10' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_10 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                      'select_gtl_5F_debugger_5F_parser_11' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_11 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                      'select_gtl_5F_debugger_5F_parser_12' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_12 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                      'select_gtl_5F_debugger_5F_parser_13' added non terminal implementation                         
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_parser_13 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_0' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_0 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_1' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_1 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_2' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_2 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_3' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_3 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_4' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_4 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_5' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_5 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_6' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_6 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_7' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_7 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_8' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_8 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//                'select_gtl_5F_debugger_5F_expression_5F_parser_9' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_9 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_10' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_10 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_11' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_11 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_12' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_12 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_13' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_13 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_14' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_14 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_15' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_15 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_16' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_16 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_17' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_17 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_18' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_18 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_19' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_19 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_20' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_20 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_21' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_21 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_22' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_22 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*
//                                                                                                                      
//               'select_gtl_5F_debugger_5F_expression_5F_parser_23' added non terminal implementation                  
//                                                                                                                      
//---------------------------------------------------------------------------------------------------------------------*

int32_t cGrammar_gtl_5F_debugger_5F_grammar::select_gtl_5F_debugger_5F_expression_5F_parser_23 (C_Lexique_gtl_5F_debugger_5F_scanner * inLexique) {
  return inLexique->nextProductionIndex () ;
}

//---------------------------------------------------------------------------------------------------------------------*

