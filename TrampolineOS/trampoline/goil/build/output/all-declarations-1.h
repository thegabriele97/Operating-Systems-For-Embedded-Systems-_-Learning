#pragma once

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

#include "all-predefined-types.h"

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

#include "all-declarations-0.h"

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  @gtlInstructionListContextStack_2D_element struct                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlInstructionListContextStack_2D_element : public AC_GALGAS_root {
//--------------------------------- Properties
  public : GALGAS_uint mProperty_nextInstructionIndex ;

  public : GALGAS_gtlInstructionList mProperty_instructionList ;

//--------------------------------- Accessors
  public : VIRTUAL_IN_DEBUG bool isValid (void) const ;
  public : VIRTUAL_IN_DEBUG void drop (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlInstructionListContextStack_2D_element constructor_default (LOCATION_ARGS) ;

//--------------------------------- Default constructor
  public : GALGAS_gtlInstructionListContextStack_2D_element (void) ;

//--------------------------------- Virtual destructor (in debug mode)
  public : virtual ~ GALGAS_gtlInstructionListContextStack_2D_element (void) ;

//--------------------------------- Native constructor
  public : GALGAS_gtlInstructionListContextStack_2D_element (const GALGAS_uint & in_nextInstructionIndex,
                                                             const GALGAS_gtlInstructionList & in_instructionList) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlInstructionListContextStack_2D_element extractObject (const GALGAS_object & inObject,
                                                                                  C_Compiler * inCompiler
                                                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlInstructionListContextStack_2D_element constructor_new (const class GALGAS_uint & inOperand0,
                                                                                          const class GALGAS_gtlInstructionList & inOperand1
                                                                                          COMMA_LOCATION_ARGS) ;

//--------------------------------- Implementation of getter 'description'
  public : VIRTUAL_IN_DEBUG void description (C_String & ioString,
                                              const int32_t inIndentation) const ;
//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlInstructionListContextStack_2D_element & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_gtlInstructionList getter_instructionList (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint getter_nextInstructionIndex (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlInstructionListContextStack_2D_element class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlInstructionListContextStack_2D_element ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                          Extension getter '@gtlVarPath stringRepresentation' (as function)                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_stringRepresentation (const class GALGAS_gtlVarPath & inObject,
                                                          class C_Compiler * inCompiler
                                                          COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                            Abstract extension getter '@gtlVarItem stringRepresentation'                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typedef class GALGAS_string (*enterExtensionGetter_gtlVarItem_stringRepresentation) (const class cPtr_gtlVarItem * inObject,
                                                                                     const class GALGAS_string constinArgument0,
                                                                                     class C_Compiler * inCompiler
                                                                                     COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_stringRepresentation (const int32_t inClassIndex,
                                                enterExtensionGetter_gtlVarItem_stringRepresentation inMethod) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string callExtensionGetter_stringRepresentation (const class cPtr_gtlVarItem * inObject,
                                                              const GALGAS_string constin_concatString,
                                                              C_Compiler * inCompiler
                                                              COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                      Extension getter '@gtlExpressionList stringRepresentation' (as function)                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_stringRepresentation (const class GALGAS_gtlExpressionList & inObject,
                                                          class C_Compiler * inCompiler
                                                          COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                           Abstract extension getter '@gtlExpression stringRepresentation'                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typedef class GALGAS_string (*enterExtensionGetter_gtlExpression_stringRepresentation) (const class cPtr_gtlExpression * inObject,
                                                                                        class C_Compiler * inCompiler
                                                                                        COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_stringRepresentation (const int32_t inClassIndex,
                                                enterExtensionGetter_gtlExpression_stringRepresentation inMethod) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string callExtensionGetter_stringRepresentation (const class cPtr_gtlExpression * inObject,
                                                              C_Compiler * inCompiler
                                                              COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                        Extension getter '@gtlExpressionMap mapRepresentation' (as function)                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_mapRepresentation (const class GALGAS_gtlExpressionMap & inObject,
                                                       class C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                       Extension getter '@gtlExpressionMap structRepresentation' (as function)                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_structRepresentation (const class GALGAS_gtlExpressionMap & inObject,
                                                          class C_Compiler * inCompiler
                                                          COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                       Extension getter '@gtlArgumentList stringRepresentation' (as function)                        *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_stringRepresentation (const class GALGAS_gtlArgumentList & inObject,
                                                          class C_Compiler * inCompiler
                                                          COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                   Extension getter '@type typeName' (as function)                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_typeName (const class GALGAS_type & inObject,
                                              class C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                        Extension getter '@sortingKeyList stringRepresentation' (as function)                        *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_stringRepresentation (const class GALGAS_sortingKeyList & inObject,
                                                          class C_Compiler * inCompiler
                                                          COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                            Extension getter '@lsint stringRepresentation' (as function)                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_stringRepresentation (const class GALGAS_lsint & inObject,
                                                          class C_Compiler * inCompiler
                                                          COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Extension getter '@gtlInstruction shortLocation'                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typedef class GALGAS_string (*enterExtensionGetter_gtlInstruction_shortLocation) (const class cPtr_gtlInstruction * inObject,
                                                                                  C_Compiler * inCompiler
                                                                                  COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionGetter_shortLocation (const int32_t inClassIndex,
                                         enterExtensionGetter_gtlInstruction_shortLocation inGetter) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string callExtensionGetter_shortLocation (const cPtr_gtlInstruction * inObject,
                                                       class C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                               Extension method '@gtlInstruction displayWithLocation'                                *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typedef void (*extensionMethodSignature_gtlInstruction_displayWithLocation) (const class cPtr_gtlInstruction * inObject,
                                                                             const class GALGAS_debuggerContext constinArgument0,
                                                                             class C_Compiler * inCompiler
                                                                             COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_displayWithLocation (const int32_t inClassIndex,
                                               extensionMethodSignature_gtlInstruction_displayWithLocation inMethod) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_displayWithLocation (const class cPtr_gtlInstruction * inObject,
                                              const GALGAS_debuggerContext constin_context,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlDoInstInstruction class                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlDoInstInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlDoInstInstruction (void) ;

//---
  public : inline const class cPtr_gtlDoInstInstruction * ptr (void) const { return (const cPtr_gtlDoInstInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlDoInstInstruction (const cPtr_gtlDoInstInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlDoInstInstruction extractObject (const GALGAS_object & inObject,
                                                             C_Compiler * inCompiler
                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlDoInstInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                     const class GALGAS_string & inOperand1,
                                                                     const class GALGAS_gtlInstruction & inOperand2
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlDoInstInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_gtlInstruction getter_instructionToDo (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlDoInstInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlDoInstInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Pointer class for @gtlDoInstInstruction class                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlDoInstInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_gtlInstruction mProperty_instructionToDo ;

//--- Constructor
  public : cPtr_gtlDoInstInstruction (const GALGAS_location & in_where,
                                      const GALGAS_string & in_signature,
                                      const GALGAS_gtlInstruction & in_instructionToDo
                                      COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_gtlInstruction getter_instructionToDo (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                            @gtlDoNotAllInstruction class                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlDoNotAllInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlDoNotAllInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlDoNotAllInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlDoNotAllInstruction * ptr (void) const { return (const cPtr_gtlDoNotAllInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlDoNotAllInstruction (const cPtr_gtlDoNotAllInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlDoNotAllInstruction extractObject (const GALGAS_object & inObject,
                                                               C_Compiler * inCompiler
                                                               COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlDoNotAllInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                       const class GALGAS_string & inOperand1
                                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlDoNotAllInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlDoNotAllInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlDoNotAllInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                   Pointer class for @gtlDoNotAllInstruction class                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlDoNotAllInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlDoNotAllInstruction (const GALGAS_location & in_where,
                                        const GALGAS_string & in_signature
                                        COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                               @gtlDoInstruction class                                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlDoInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlDoInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlDoInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlDoInstruction * ptr (void) const { return (const cPtr_gtlDoInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlDoInstruction (const cPtr_gtlDoInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlDoInstruction extractObject (const GALGAS_object & inObject,
                                                         C_Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlDoInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                 const class GALGAS_string & inOperand1
                                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlDoInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlDoInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlDoInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                      Pointer class for @gtlDoInstruction class                                      *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlDoInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlDoInstruction (const GALGAS_location & in_where,
                                  const GALGAS_string & in_signature
                                  COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                            @gtlContinueInstruction class                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlContinueInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlContinueInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlContinueInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlContinueInstruction * ptr (void) const { return (const cPtr_gtlContinueInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlContinueInstruction (const cPtr_gtlContinueInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlContinueInstruction extractObject (const GALGAS_object & inObject,
                                                               C_Compiler * inCompiler
                                                               COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlContinueInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                       const class GALGAS_string & inOperand1
                                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlContinueInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlContinueInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlContinueInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                   Pointer class for @gtlContinueInstruction class                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlContinueInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlContinueInstruction (const GALGAS_location & in_where,
                                        const GALGAS_string & in_signature
                                        COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @gtlBreakpointInstruction class                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlBreakpointInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlBreakpointInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlBreakpointInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlBreakpointInstruction * ptr (void) const { return (const cPtr_gtlBreakpointInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlBreakpointInstruction (const cPtr_gtlBreakpointInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlBreakpointInstruction extractObject (const GALGAS_object & inObject,
                                                                 C_Compiler * inCompiler
                                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlBreakpointInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                         const class GALGAS_string & inOperand1,
                                                                         const class GALGAS_string & inOperand2,
                                                                         const class GALGAS_uint & inOperand3
                                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlBreakpointInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_string getter_fileName (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint getter_lineNum (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlBreakpointInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlBreakpointInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Pointer class for @gtlBreakpointInstruction class                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlBreakpointInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_string mProperty_fileName ;
  public : GALGAS_uint mProperty_lineNum ;

//--- Constructor
  public : cPtr_gtlBreakpointInstruction (const GALGAS_location & in_where,
                                          const GALGAS_string & in_signature,
                                          const GALGAS_string & in_fileName,
                                          const GALGAS_uint & in_lineNum
                                          COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_string getter_fileName (LOCATION_ARGS) const ;
  public : VIRTUAL_IN_DEBUG GALGAS_uint getter_lineNum (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @gtlBreakpointListInstruction class                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlBreakpointListInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlBreakpointListInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlBreakpointListInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlBreakpointListInstruction * ptr (void) const { return (const cPtr_gtlBreakpointListInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlBreakpointListInstruction (const cPtr_gtlBreakpointListInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlBreakpointListInstruction extractObject (const GALGAS_object & inObject,
                                                                     C_Compiler * inCompiler
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlBreakpointListInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                             const class GALGAS_string & inOperand1
                                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlBreakpointListInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlBreakpointListInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlBreakpointListInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                Pointer class for @gtlBreakpointListInstruction class                                *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlBreakpointListInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlBreakpointListInstruction (const GALGAS_location & in_where,
                                              const GALGAS_string & in_signature
                                              COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                        @gtlBreakpointDeleteInstruction class                                        *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlBreakpointDeleteInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlBreakpointDeleteInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlBreakpointDeleteInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlBreakpointDeleteInstruction * ptr (void) const { return (const cPtr_gtlBreakpointDeleteInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlBreakpointDeleteInstruction (const cPtr_gtlBreakpointDeleteInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlBreakpointDeleteInstruction extractObject (const GALGAS_object & inObject,
                                                                       C_Compiler * inCompiler
                                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlBreakpointDeleteInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                               const class GALGAS_string & inOperand1,
                                                                               const class GALGAS_lbigint & inOperand2
                                                                               COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlBreakpointDeleteInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_lbigint getter_numToDelete (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlBreakpointDeleteInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlBreakpointDeleteInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                               Pointer class for @gtlBreakpointDeleteInstruction class                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlBreakpointDeleteInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_lbigint mProperty_numToDelete ;

//--- Constructor
  public : cPtr_gtlBreakpointDeleteInstruction (const GALGAS_location & in_where,
                                                const GALGAS_string & in_signature,
                                                const GALGAS_lbigint & in_numToDelete
                                                COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_lbigint getter_numToDelete (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                      @gtlBreakpointDeleteAllInstruction class                                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlBreakpointDeleteAllInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlBreakpointDeleteAllInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlBreakpointDeleteAllInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlBreakpointDeleteAllInstruction * ptr (void) const { return (const cPtr_gtlBreakpointDeleteAllInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlBreakpointDeleteAllInstruction (const cPtr_gtlBreakpointDeleteAllInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlBreakpointDeleteAllInstruction extractObject (const GALGAS_object & inObject,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlBreakpointDeleteAllInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                                  const class GALGAS_string & inOperand1
                                                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlBreakpointDeleteAllInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlBreakpointDeleteAllInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlBreakpointDeleteAllInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                             Pointer class for @gtlBreakpointDeleteAllInstruction class                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlBreakpointDeleteAllInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlBreakpointDeleteAllInstruction (const GALGAS_location & in_where,
                                                   const GALGAS_string & in_signature
                                                   COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @gtlWatchpointListInstruction class                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlWatchpointListInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlWatchpointListInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlWatchpointListInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlWatchpointListInstruction * ptr (void) const { return (const cPtr_gtlWatchpointListInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlWatchpointListInstruction (const cPtr_gtlWatchpointListInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlWatchpointListInstruction extractObject (const GALGAS_object & inObject,
                                                                     C_Compiler * inCompiler
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlWatchpointListInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                             const class GALGAS_string & inOperand1
                                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlWatchpointListInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlWatchpointListInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlWatchpointListInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                Pointer class for @gtlWatchpointListInstruction class                                *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlWatchpointListInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlWatchpointListInstruction (const GALGAS_location & in_where,
                                              const GALGAS_string & in_signature
                                              COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                        @gtlWatchpointDeleteInstruction class                                        *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlWatchpointDeleteInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlWatchpointDeleteInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlWatchpointDeleteInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlWatchpointDeleteInstruction * ptr (void) const { return (const cPtr_gtlWatchpointDeleteInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlWatchpointDeleteInstruction (const cPtr_gtlWatchpointDeleteInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlWatchpointDeleteInstruction extractObject (const GALGAS_object & inObject,
                                                                       C_Compiler * inCompiler
                                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlWatchpointDeleteInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                               const class GALGAS_string & inOperand1,
                                                                               const class GALGAS_lbigint & inOperand2
                                                                               COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlWatchpointDeleteInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_lbigint getter_numToDelete (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlWatchpointDeleteInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlWatchpointDeleteInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                               Pointer class for @gtlWatchpointDeleteInstruction class                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlWatchpointDeleteInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_lbigint mProperty_numToDelete ;

//--- Constructor
  public : cPtr_gtlWatchpointDeleteInstruction (const GALGAS_location & in_where,
                                                const GALGAS_string & in_signature,
                                                const GALGAS_lbigint & in_numToDelete
                                                COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_lbigint getter_numToDelete (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                      @gtlWatchpointDeleteAllInstruction class                                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlWatchpointDeleteAllInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlWatchpointDeleteAllInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlWatchpointDeleteAllInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlWatchpointDeleteAllInstruction * ptr (void) const { return (const cPtr_gtlWatchpointDeleteAllInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlWatchpointDeleteAllInstruction (const cPtr_gtlWatchpointDeleteAllInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlWatchpointDeleteAllInstruction extractObject (const GALGAS_object & inObject,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlWatchpointDeleteAllInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                                  const class GALGAS_string & inOperand1
                                                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlWatchpointDeleteAllInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlWatchpointDeleteAllInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlWatchpointDeleteAllInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                             Pointer class for @gtlWatchpointDeleteAllInstruction class                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlWatchpointDeleteAllInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlWatchpointDeleteAllInstruction (const GALGAS_location & in_where,
                                                   const GALGAS_string & in_signature
                                                   COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                              @gtlListInstruction class                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlListInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlListInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlListInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlListInstruction * ptr (void) const { return (const cPtr_gtlListInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlListInstruction (const cPtr_gtlListInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlListInstruction extractObject (const GALGAS_object & inObject,
                                                           C_Compiler * inCompiler
                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlListInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                   const class GALGAS_string & inOperand1,
                                                                   const class GALGAS_uint & inOperand2
                                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlListInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_uint getter_window (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlListInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlListInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Pointer class for @gtlListInstruction class                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlListInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_uint mProperty_window ;

//--- Constructor
  public : cPtr_gtlListInstruction (const GALGAS_location & in_where,
                                    const GALGAS_string & in_signature,
                                    const GALGAS_uint & in_window
                                    COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_uint getter_window (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                            @gtlHistoryInstruction class                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlHistoryInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlHistoryInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlHistoryInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlHistoryInstruction * ptr (void) const { return (const cPtr_gtlHistoryInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlHistoryInstruction (const cPtr_gtlHistoryInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlHistoryInstruction extractObject (const GALGAS_object & inObject,
                                                              C_Compiler * inCompiler
                                                              COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlHistoryInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                      const class GALGAS_string & inOperand1
                                                                      COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlHistoryInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlHistoryInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlHistoryInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                   Pointer class for @gtlHistoryInstruction class                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlHistoryInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlHistoryInstruction (const GALGAS_location & in_where,
                                       const GALGAS_string & in_signature
                                       COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                              @gtlLoadInstruction class                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLoadInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlLoadInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlLoadInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlLoadInstruction * ptr (void) const { return (const cPtr_gtlLoadInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLoadInstruction (const cPtr_gtlLoadInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLoadInstruction extractObject (const GALGAS_object & inObject,
                                                           C_Compiler * inCompiler
                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLoadInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                   const class GALGAS_string & inOperand1,
                                                                   const class GALGAS_string & inOperand2
                                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLoadInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_string getter_fileName (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLoadInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLoadInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Pointer class for @gtlLoadInstruction class                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLoadInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_string mProperty_fileName ;

//--- Constructor
  public : cPtr_gtlLoadInstruction (const GALGAS_location & in_where,
                                    const GALGAS_string & in_signature,
                                    const GALGAS_string & in_fileName
                                    COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_string getter_fileName (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                              @gtlHelpInstruction class                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlHelpInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlHelpInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlHelpInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlHelpInstruction * ptr (void) const { return (const cPtr_gtlHelpInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlHelpInstruction (const cPtr_gtlHelpInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlHelpInstruction extractObject (const GALGAS_object & inObject,
                                                           C_Compiler * inCompiler
                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlHelpInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                   const class GALGAS_string & inOperand1
                                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlHelpInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlHelpInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlHelpInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Pointer class for @gtlHelpInstruction class                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlHelpInstruction : public cPtr_gtlInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlHelpInstruction (const GALGAS_location & in_where,
                                    const GALGAS_string & in_signature
                                    COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Extension setter '@debugCommandInput getCommand'                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typedef void (*extensionSetterSignature_debugCommandInput_getCommand) (class cPtr_debugCommandInput * inObject,
                                                                       class GALGAS_string & outArgument0,
                                                                       class C_Compiler * inCompiler
                                                                       COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionSetter_getCommand (const int32_t inClassIndex,
                                      extensionSetterSignature_debugCommandInput_getCommand inModifier) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionSetter_getCommand (class cPtr_debugCommandInput * inObject,
                                     GALGAS_string & out_command,
                                     C_Compiler * inCompiler
                                     COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Extension method '@debugCommandInput listHistory'                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typedef void (*extensionMethodSignature_debugCommandInput_listHistory) (const class cPtr_debugCommandInput * inObject,
                                                                        class C_Compiler * inCompiler
                                                                        COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_listHistory (const int32_t inClassIndex,
                                       extensionMethodSignature_debugCommandInput_listHistory inMethod) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_listHistory (const class cPtr_debugCommandInput * inObject,
                                      C_Compiler * inCompiler
                                      COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlDoNotInstruction class                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlDoNotInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlDoNotInstruction (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_gtlDoNotInstruction constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_gtlDoNotInstruction * ptr (void) const { return (const cPtr_gtlDoNotInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlDoNotInstruction (const cPtr_gtlDoNotInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlDoNotInstruction extractObject (const GALGAS_object & inObject,
                                                            C_Compiler * inCompiler
                                                            COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlDoNotInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                    const class GALGAS_string & inOperand1,
                                                                    const class GALGAS_lbigint & inOperand2
                                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlDoNotInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_lbigint getter_numToDelete (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlDoNotInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlDoNotInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Pointer class for @gtlDoNotInstruction class                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlDoNotInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_lbigint mProperty_numToDelete ;

//--- Constructor
  public : cPtr_gtlDoNotInstruction (const GALGAS_location & in_where,
                                     const GALGAS_string & in_signature,
                                     const GALGAS_lbigint & in_numToDelete
                                     COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_lbigint getter_numToDelete (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlAssignInstruction class                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlAssignInstruction : public GALGAS_gtlLetUnconstructedInstruction {
//--- Constructor
  public : GALGAS_gtlAssignInstruction (void) ;

//---
  public : inline const class cPtr_gtlAssignInstruction * ptr (void) const { return (const cPtr_gtlAssignInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlAssignInstruction (const cPtr_gtlAssignInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlAssignInstruction extractObject (const GALGAS_object & inObject,
                                                             C_Compiler * inCompiler
                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlAssignInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_gtlExpression getter_rValue (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlAssignInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlAssignInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Pointer class for @gtlAssignInstruction class                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlAssignInstruction : public cPtr_gtlLetUnconstructedInstruction {
//--- Attributes
  public : GALGAS_gtlExpression mProperty_rValue ;

//--- Constructor
  public : cPtr_gtlAssignInstruction (const GALGAS_location & in_where,
                                      const GALGAS_string & in_signature,
                                      const GALGAS_gtlVarPath & in_lValue,
                                      const GALGAS_gtlExpression & in_rValue
                                      COMMA_LOCATION_ARGS) ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_gtlExpression getter_rValue (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const = 0 ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const = 0 ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const = 0 ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlLetAddInstruction class                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetAddInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetAddInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetAddInstruction * ptr (void) const { return (const cPtr_gtlLetAddInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetAddInstruction (const cPtr_gtlLetAddInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetAddInstruction extractObject (const GALGAS_object & inObject,
                                                             C_Compiler * inCompiler
                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetAddInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                     const class GALGAS_string & inOperand1,
                                                                     const class GALGAS_gtlVarPath & inOperand2,
                                                                     const class GALGAS_gtlExpression & inOperand3
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetAddInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetAddInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetAddInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Pointer class for @gtlLetAddInstruction class                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetAddInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetAddInstruction (const GALGAS_location & in_where,
                                      const GALGAS_string & in_signature,
                                      const GALGAS_gtlVarPath & in_lValue,
                                      const GALGAS_gtlExpression & in_rValue
                                      COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlLetAndInstruction class                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetAndInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetAndInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetAndInstruction * ptr (void) const { return (const cPtr_gtlLetAndInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetAndInstruction (const cPtr_gtlLetAndInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetAndInstruction extractObject (const GALGAS_object & inObject,
                                                             C_Compiler * inCompiler
                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetAndInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                     const class GALGAS_string & inOperand1,
                                                                     const class GALGAS_gtlVarPath & inOperand2,
                                                                     const class GALGAS_gtlExpression & inOperand3
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetAndInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetAndInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetAndInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Pointer class for @gtlLetAndInstruction class                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetAndInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetAndInstruction (const GALGAS_location & in_where,
                                      const GALGAS_string & in_signature,
                                      const GALGAS_gtlVarPath & in_lValue,
                                      const GALGAS_gtlExpression & in_rValue
                                      COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @gtlLetDivideInstruction class                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetDivideInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetDivideInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetDivideInstruction * ptr (void) const { return (const cPtr_gtlLetDivideInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetDivideInstruction (const cPtr_gtlLetDivideInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetDivideInstruction extractObject (const GALGAS_object & inObject,
                                                                C_Compiler * inCompiler
                                                                COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetDivideInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                        const class GALGAS_string & inOperand1,
                                                                        const class GALGAS_gtlVarPath & inOperand2,
                                                                        const class GALGAS_gtlExpression & inOperand3
                                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetDivideInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetDivideInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetDivideInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Pointer class for @gtlLetDivideInstruction class                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetDivideInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetDivideInstruction (const GALGAS_location & in_where,
                                         const GALGAS_string & in_signature,
                                         const GALGAS_gtlVarPath & in_lValue,
                                         const GALGAS_gtlExpression & in_rValue
                                         COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                              @gtlLetInstruction class                                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetInstruction * ptr (void) const { return (const cPtr_gtlLetInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetInstruction (const cPtr_gtlLetInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetInstruction extractObject (const GALGAS_object & inObject,
                                                          C_Compiler * inCompiler
                                                          COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                  const class GALGAS_string & inOperand1,
                                                                  const class GALGAS_gtlVarPath & inOperand2,
                                                                  const class GALGAS_gtlExpression & inOperand3
                                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Pointer class for @gtlLetInstruction class                                      *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetInstruction (const GALGAS_location & in_where,
                                   const GALGAS_string & in_signature,
                                   const GALGAS_gtlVarPath & in_lValue,
                                   const GALGAS_gtlExpression & in_rValue
                                   COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @gtlLetModuloInstruction class                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetModuloInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetModuloInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetModuloInstruction * ptr (void) const { return (const cPtr_gtlLetModuloInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetModuloInstruction (const cPtr_gtlLetModuloInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetModuloInstruction extractObject (const GALGAS_object & inObject,
                                                                C_Compiler * inCompiler
                                                                COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetModuloInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                        const class GALGAS_string & inOperand1,
                                                                        const class GALGAS_gtlVarPath & inOperand2,
                                                                        const class GALGAS_gtlExpression & inOperand3
                                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetModuloInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetModuloInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetModuloInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Pointer class for @gtlLetModuloInstruction class                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetModuloInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetModuloInstruction (const GALGAS_location & in_where,
                                         const GALGAS_string & in_signature,
                                         const GALGAS_gtlVarPath & in_lValue,
                                         const GALGAS_gtlExpression & in_rValue
                                         COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlLetMultiplyInstruction class                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetMultiplyInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetMultiplyInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetMultiplyInstruction * ptr (void) const { return (const cPtr_gtlLetMultiplyInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetMultiplyInstruction (const cPtr_gtlLetMultiplyInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetMultiplyInstruction extractObject (const GALGAS_object & inObject,
                                                                  C_Compiler * inCompiler
                                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetMultiplyInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                          const class GALGAS_string & inOperand1,
                                                                          const class GALGAS_gtlVarPath & inOperand2,
                                                                          const class GALGAS_gtlExpression & inOperand3
                                                                          COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetMultiplyInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetMultiplyInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetMultiplyInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                 Pointer class for @gtlLetMultiplyInstruction class                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetMultiplyInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetMultiplyInstruction (const GALGAS_location & in_where,
                                           const GALGAS_string & in_signature,
                                           const GALGAS_gtlVarPath & in_lValue,
                                           const GALGAS_gtlExpression & in_rValue
                                           COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlLetOrInstruction class                                              *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetOrInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetOrInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetOrInstruction * ptr (void) const { return (const cPtr_gtlLetOrInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetOrInstruction (const cPtr_gtlLetOrInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetOrInstruction extractObject (const GALGAS_object & inObject,
                                                            C_Compiler * inCompiler
                                                            COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetOrInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                    const class GALGAS_string & inOperand1,
                                                                    const class GALGAS_gtlVarPath & inOperand2,
                                                                    const class GALGAS_gtlExpression & inOperand3
                                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetOrInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetOrInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetOrInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Pointer class for @gtlLetOrInstruction class                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetOrInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetOrInstruction (const GALGAS_location & in_where,
                                     const GALGAS_string & in_signature,
                                     const GALGAS_gtlVarPath & in_lValue,
                                     const GALGAS_gtlExpression & in_rValue
                                     COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlLetShiftLeftInstruction class                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetShiftLeftInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetShiftLeftInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetShiftLeftInstruction * ptr (void) const { return (const cPtr_gtlLetShiftLeftInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetShiftLeftInstruction (const cPtr_gtlLetShiftLeftInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetShiftLeftInstruction extractObject (const GALGAS_object & inObject,
                                                                   C_Compiler * inCompiler
                                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetShiftLeftInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                           const class GALGAS_string & inOperand1,
                                                                           const class GALGAS_gtlVarPath & inOperand2,
                                                                           const class GALGAS_gtlExpression & inOperand3
                                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetShiftLeftInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetShiftLeftInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetShiftLeftInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                 Pointer class for @gtlLetShiftLeftInstruction class                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetShiftLeftInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetShiftLeftInstruction (const GALGAS_location & in_where,
                                            const GALGAS_string & in_signature,
                                            const GALGAS_gtlVarPath & in_lValue,
                                            const GALGAS_gtlExpression & in_rValue
                                            COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @gtlLetShiftRightInstruction class                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetShiftRightInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetShiftRightInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetShiftRightInstruction * ptr (void) const { return (const cPtr_gtlLetShiftRightInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetShiftRightInstruction (const cPtr_gtlLetShiftRightInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetShiftRightInstruction extractObject (const GALGAS_object & inObject,
                                                                    C_Compiler * inCompiler
                                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetShiftRightInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                            const class GALGAS_string & inOperand1,
                                                                            const class GALGAS_gtlVarPath & inOperand2,
                                                                            const class GALGAS_gtlExpression & inOperand3
                                                                            COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetShiftRightInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetShiftRightInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetShiftRightInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                Pointer class for @gtlLetShiftRightInstruction class                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetShiftRightInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetShiftRightInstruction (const GALGAS_location & in_where,
                                             const GALGAS_string & in_signature,
                                             const GALGAS_gtlVarPath & in_lValue,
                                             const GALGAS_gtlExpression & in_rValue
                                             COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          @gtlLetSubstractInstruction class                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetSubstractInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetSubstractInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetSubstractInstruction * ptr (void) const { return (const cPtr_gtlLetSubstractInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetSubstractInstruction (const cPtr_gtlLetSubstractInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetSubstractInstruction extractObject (const GALGAS_object & inObject,
                                                                   C_Compiler * inCompiler
                                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetSubstractInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                           const class GALGAS_string & inOperand1,
                                                                           const class GALGAS_gtlVarPath & inOperand2,
                                                                           const class GALGAS_gtlExpression & inOperand3
                                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetSubstractInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetSubstractInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetSubstractInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                 Pointer class for @gtlLetSubstractInstruction class                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetSubstractInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetSubstractInstruction (const GALGAS_location & in_where,
                                            const GALGAS_string & in_signature,
                                            const GALGAS_gtlVarPath & in_lValue,
                                            const GALGAS_gtlExpression & in_rValue
                                            COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                             @gtlLetXorInstruction class                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlLetXorInstruction : public GALGAS_gtlAssignInstruction {
//--- Constructor
  public : GALGAS_gtlLetXorInstruction (void) ;

//---
  public : inline const class cPtr_gtlLetXorInstruction * ptr (void) const { return (const cPtr_gtlLetXorInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlLetXorInstruction (const cPtr_gtlLetXorInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlLetXorInstruction extractObject (const GALGAS_object & inObject,
                                                             C_Compiler * inCompiler
                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlLetXorInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                     const class GALGAS_string & inOperand1,
                                                                     const class GALGAS_gtlVarPath & inOperand2,
                                                                     const class GALGAS_gtlExpression & inOperand3
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlLetXorInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlLetXorInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlLetXorInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                    Pointer class for @gtlLetXorInstruction class                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlLetXorInstruction : public cPtr_gtlAssignInstruction {
//--- Attributes

//--- Constructor
  public : cPtr_gtlLetXorInstruction (const GALGAS_location & in_where,
                                      const GALGAS_string & in_signature,
                                      const GALGAS_gtlVarPath & in_lValue,
                                      const GALGAS_gtlExpression & in_rValue
                                      COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @gtlPrintStatementInstruction class                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlPrintStatementInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlPrintStatementInstruction (void) ;

//---
  public : inline const class cPtr_gtlPrintStatementInstruction * ptr (void) const { return (const cPtr_gtlPrintStatementInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlPrintStatementInstruction (const cPtr_gtlPrintStatementInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlPrintStatementInstruction extractObject (const GALGAS_object & inObject,
                                                                     C_Compiler * inCompiler
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlPrintStatementInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                             const class GALGAS_string & inOperand1,
                                                                             const class GALGAS_bool & inOperand2,
                                                                             const class GALGAS_gtlExpression & inOperand3
                                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlPrintStatementInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_carriageReturn (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_gtlExpression getter_messageToPrint (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlPrintStatementInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlPrintStatementInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                Pointer class for @gtlPrintStatementInstruction class                                *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlPrintStatementInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_bool mProperty_carriageReturn ;
  public : GALGAS_gtlExpression mProperty_messageToPrint ;

//--- Constructor
  public : cPtr_gtlPrintStatementInstruction (const GALGAS_location & in_where,
                                              const GALGAS_string & in_signature,
                                              const GALGAS_bool & in_carriageReturn,
                                              const GALGAS_gtlExpression & in_messageToPrint
                                              COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_bool getter_carriageReturn (LOCATION_ARGS) const ;
  public : VIRTUAL_IN_DEBUG GALGAS_gtlExpression getter_messageToPrint (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @gtlWatchpointInstruction class                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_gtlWatchpointInstruction : public GALGAS_gtlInstruction {
//--- Constructor
  public : GALGAS_gtlWatchpointInstruction (void) ;

//---
  public : inline const class cPtr_gtlWatchpointInstruction * ptr (void) const { return (const cPtr_gtlWatchpointInstruction *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_gtlWatchpointInstruction (const cPtr_gtlWatchpointInstruction * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_gtlWatchpointInstruction extractObject (const GALGAS_object & inObject,
                                                                 C_Compiler * inCompiler
                                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_gtlWatchpointInstruction constructor_new (const class GALGAS_location & inOperand0,
                                                                         const class GALGAS_string & inOperand1,
                                                                         const class GALGAS_gtlExpression & inOperand2
                                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_gtlWatchpointInstruction & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_gtlExpression getter_watchExpression (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_gtlWatchpointInstruction class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_gtlWatchpointInstruction ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                  Pointer class for @gtlWatchpointInstruction class                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_gtlWatchpointInstruction : public cPtr_gtlInstruction {
//--- Attributes
  public : GALGAS_gtlExpression mProperty_watchExpression ;

//--- Constructor
  public : cPtr_gtlWatchpointInstruction (const GALGAS_location & in_where,
                                          const GALGAS_string & in_signature,
                                          const GALGAS_gtlExpression & in_watchExpression
                                          COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_gtlExpression getter_watchExpression (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                Function 'signature'                                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string function_signature (class GALGAS_location inArgument0,
                                        class C_Compiler * inCompiler
                                        COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                               LEXIQUE goil_5F_lexique                                               *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

#include "galgas2/C_Lexique.h"

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                    E X T E R N    R O U T I N E S                                                                   *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                    E X T E R N    F U N C T I O N S                                                                 *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                       T O K E N    C L A S S                                                                        *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cTokenFor_goil_5F_lexique : public cToken {
  public : C_String mLexicalAttribute_a_5F_string ;
  public : C_String mLexicalAttribute_att_5F_token ;
  public : double mLexicalAttribute_floatNumber ;
  public : uint64_t mLexicalAttribute_integerNumber ;
  public : C_String mLexicalAttribute_number ;

  public : cTokenFor_goil_5F_lexique (void) ;
} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                     S C A N N E R    C L A S S                                                                      *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class C_Lexique_goil_5F_lexique : public C_Lexique {
//--- Constructors
  public : C_Lexique_goil_5F_lexique (C_Compiler * inCallerCompiler,
                       const C_String & inSourceFileName
                       COMMA_LOCATION_ARGS) ;

  public : C_Lexique_goil_5F_lexique (C_Compiler * inCallerCompiler,
                       const C_String & inSourceString,
                       const C_String & inStringForError
                       COMMA_LOCATION_ARGS) ;

//--- Instrospection
  public : static GALGAS_stringlist symbols (LOCATION_ARGS) ;

//--- Declaring a protected virtual destructor enables the compiler to raise
//    an error if a direct delete is performed; only the static method
//    C_SharedObject::detachPointer may invoke delete.
  #ifndef DO_NOT_GENERATE_CHECKINGS
    protected : virtual ~ C_Lexique_goil_5F_lexique (void) {}
  #endif



//--- Terminal symbols enumeration
  public : enum {kToken_,
   kToken_comment,
   kToken_idf,
   kToken_string,
   kToken_g_5F_string,
   kToken_uint_5F_number,
   kToken_float_5F_number,
   kToken_set_5F_start_5F_uint_5F_number,
   kToken_command,
   kToken_OIL_5F_VERSION,
   kToken_IMPLEMENTATION,
   kToken_CPU,
   kToken_UINT_33__32_,
   kToken_INT_33__32_,
   kToken_UINT_36__34_,
   kToken_INT_36__34_,
   kToken_FLOAT,
   kToken_ENUM,
   kToken_STRING,
   kToken_BOOLEAN,
   kToken_IDENTIFIER,
   kToken_STRUCT,
   kToken_WITH_5F_AUTO,
   kToken_NO_5F_DEFAULT,
   kToken_AUTO,
   kToken_FALSE,
   kToken_TRUE,
   kToken__3B_,
   kToken__3A_,
   kToken__3D_,
   kToken__7B_,
   kToken__7D_,
   kToken__2E__2E_,
   kToken__5B_,
   kToken__5D_,
   kToken__2C_,
   kToken__2E_,
   kToken__2B_,
   kToken__2D_,
   kToken_include,
   kToken_includeifexists} ;

//--- Key words table 'oilVersion'
  public : static int16_t search_into_oilVersion (const C_String & inSearchedString) ;

//--- Key words table 'oilDefinitions'
  public : static int16_t search_into_oilDefinitions (const C_String & inSearchedString) ;

//--- Key words table 'dataTypes'
  public : static int16_t search_into_dataTypes (const C_String & inSearchedString) ;

//--- Key words table 'miscSpecifiers'
  public : static int16_t search_into_miscSpecifiers (const C_String & inSearchedString) ;

//--- Key words table 'boolean'
  public : static int16_t search_into_boolean (const C_String & inSearchedString) ;

//--- Key words table 'OILDelimiters'
  public : static int16_t search_into_OILDelimiters (const C_String & inSearchedString) ;

//--- Key words table 'commands'
  public : static int16_t search_into_commands (const C_String & inSearchedString) ;
  

//--- Assign from attribute
  public : GALGAS_lstring synthetizedAttribute_a_5F_string (void) const ;
  public : GALGAS_lstring synthetizedAttribute_att_5F_token (void) const ;
  public : GALGAS_ldouble synthetizedAttribute_floatNumber (void) const ;
  public : GALGAS_luint_36__34_ synthetizedAttribute_integerNumber (void) const ;
  public : GALGAS_lstring synthetizedAttribute_number (void) const ;


//--- Attribute access
  public : C_String attributeValue_a_5F_string (void) const ;
  public : C_String attributeValue_att_5F_token (void) const ;
  public : double attributeValue_floatNumber (void) const ;
  public : uint64_t attributeValue_integerNumber (void) const ;
  public : C_String attributeValue_number (void) const ;


//--- Indexing keys

//--- Unicode test functions

//--- Indexing directory
  protected : virtual C_String indexingDirectory (void) const ;

//--- Parse lexical token
  protected : virtual bool parseLexicalToken (void) ;

//--- Get terminal message
  protected : virtual C_String getMessageForTerminal (const int16_t inTerminalSymbol) const ;

//--- Get terminal count
  public : virtual int16_t terminalVocabularyCount (void) const { return 40 ; }

//--- Get Token String
  public : virtual C_String getCurrentTokenString (const cToken * inTokenPtr) const ;

//--- Enter Token
  protected : void enterToken (cTokenFor_goil_5F_lexique & ioToken) ;

//--- Style name for Latex
  protected : virtual C_String styleNameForIndex (const uint32_t inStyleIndex) const ;
  protected : virtual uint32_t styleIndexForTerminal (const int32_t inTerminalIndex) const ;
} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @dataType enum                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_dataType : public AC_GALGAS_root {
//--------------------------------- Default constructor
  public : GALGAS_dataType (void) ;

//--------------------------------- Enumeration
  public : typedef enum {
    kNotBuilt,
    kEnum_void,
    kEnum_uint_33__32_Number,
    kEnum_sint_33__32_Number,
    kEnum_uint_36__34_Number,
    kEnum_sint_36__34_Number,
    kEnum_floatNumber,
    kEnum_string,
    kEnum_enumeration,
    kEnum_boolean,
    kEnum_identifier,
    kEnum_objectType,
    kEnum_structType
  } enumeration ;
  
//--------------------------------- Private data member
  private : enumeration mEnum ;

//--------------------------------- Accessors
  public : VIRTUAL_IN_DEBUG inline bool isValid (void) const { return kNotBuilt != mEnum ; }
  public : VIRTUAL_IN_DEBUG inline void drop (void) { mEnum = kNotBuilt ; }
  public : inline enumeration enumValue (void) const { return mEnum ; }

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_dataType extractObject (const GALGAS_object & inObject,
                                                 C_Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_dataType constructor_boolean (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_enumeration (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_floatNumber (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_identifier (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_objectType (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_sint_33__32_Number (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_sint_36__34_Number (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_string (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_structType (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_uint_33__32_Number (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_uint_36__34_Number (LOCATION_ARGS) ;

  public : static class GALGAS_dataType constructor_void (LOCATION_ARGS) ;

//--------------------------------- Implementation of getter 'description'
  public : VIRTUAL_IN_DEBUG void description (C_String & ioString,
                                              const int32_t inIndentation) const ;
//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_dataType & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isBoolean (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isEnumeration (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isFloatNumber (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isIdentifier (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isObjectType (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isSint_33__32_Number (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isSint_36__34_Number (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isString (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isStructType (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isUint_33__32_Number (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isUint_36__34_Number (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_bool getter_isVoid (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_dataType class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_dataType ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                 Extension getter '@dataType oilType' (as function)                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_oilType (const class GALGAS_dataType & inObject,
                                             class C_Compiler * inCompiler
                                             COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                Extension getter '@dataType arxmlType' (as function)                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_string extensionGetter_arxmlType (const class GALGAS_dataType & inObject,
                                               class C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                  @uint32List list                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_uint_33__32_List : public AC_GALGAS_list {
//--------------------------------- Default constructor
  public : GALGAS_uint_33__32_List (void) ;

//--------------------------------- List constructor used by listmap
  public : GALGAS_uint_33__32_List (const capCollectionElementArray & inSharedArray) ;

//--------------------------------- Element constructor
  public : static void makeAttributesFromObjects (capCollectionElement & outAttributes,
                                                  const class GALGAS_location & in_location,
                                                  const class GALGAS_uint & in_value
                                                  COMMA_LOCATION_ARGS) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_uint_33__32_List extractObject (const GALGAS_object & inObject,
                                                         C_Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_uint_33__32_List constructor_emptyList (LOCATION_ARGS) ;

  public : static class GALGAS_uint_33__32_List constructor_listWithValue (const class GALGAS_location & inOperand0,
                                                                           const class GALGAS_uint & inOperand1
                                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with expression)
  public : VIRTUAL_IN_DEBUG void plusAssign_operation (const GALGAS_uint_33__32_List inOperand,
                                                       class C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with list of field expressions)
  public : VIRTUAL_IN_DEBUG void addAssign_operation (const class GALGAS_location & inOperand0,
                                                      const class GALGAS_uint & inOperand1
                                                      COMMA_LOCATION_ARGS) ;
//--------------------------------- + operator
  public : VIRTUAL_IN_DEBUG GALGAS_uint_33__32_List add_operation (const GALGAS_uint_33__32_List & inOperand,
                                                                   C_Compiler * inCompiler
                                                                   COMMA_LOCATION_ARGS) const ;


//--------------------------------- Setters
  public : VIRTUAL_IN_DEBUG void setter_append (class GALGAS_uint_33__32_List_2D_element inArgument0,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_insertAtIndex (class GALGAS_location constinArgument0,
                                                       class GALGAS_uint constinArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popFirst (class GALGAS_location & outArgument0,
                                                  class GALGAS_uint & outArgument1,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popLast (class GALGAS_location & outArgument0,
                                                 class GALGAS_uint & outArgument1,
                                                 C_Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_removeAtIndex (class GALGAS_location & outArgument0,
                                                       class GALGAS_uint & outArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;


//--------------------------------- Instance Methods
  public : VIRTUAL_IN_DEBUG void method_first (class GALGAS_location & outArgument0,
                                               class GALGAS_uint & outArgument1,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG void method_last (class GALGAS_location & outArgument0,
                                              class GALGAS_uint & outArgument1,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) const ;

//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_locationAtIndex (const class GALGAS_uint & constinOperand0,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint_33__32_List getter_subListFromIndex (const class GALGAS_uint & constinOperand0,
                                                                                   C_Compiler * inCompiler
                                                                                   COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint_33__32_List getter_subListToIndex (const class GALGAS_uint & constinOperand0,
                                                                                 C_Compiler * inCompiler
                                                                                 COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint_33__32_List getter_subListWithRange (const class GALGAS_range & constinOperand0,
                                                                                   C_Compiler * inCompiler
                                                                                   COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint getter_valueAtIndex (const class GALGAS_uint & constinOperand0,
                                                                   C_Compiler * inCompiler
                                                                   COMMA_LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
//--------------------------------- Friend

  friend class cEnumerator_uint_33__32_List ;
 
} ; // End of GALGAS_uint_33__32_List class

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Enumerator declaration                                                                                            *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cEnumerator_uint_33__32_List : public cGenericAbstractEnumerator {
  public : cEnumerator_uint_33__32_List (const GALGAS_uint_33__32_List & inEnumeratedObject,
                                         const typeEnumerationOrder inOrder) ;

//--- Current element access
  public : class GALGAS_location current_location (LOCATION_ARGS) const ;
  public : class GALGAS_uint current_value (LOCATION_ARGS) const ;
//--- Current element access
  public : class GALGAS_uint_33__32_List_2D_element current (LOCATION_ARGS) const ;
} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_uint_33__32_List ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @uint_33__32_List_2D_element struct                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_uint_33__32_List_2D_element : public AC_GALGAS_root {
//--------------------------------- Properties
  public : GALGAS_location mProperty_location ;

  public : GALGAS_uint mProperty_value ;

//--------------------------------- Accessors
  public : VIRTUAL_IN_DEBUG bool isValid (void) const ;
  public : VIRTUAL_IN_DEBUG void drop (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_uint_33__32_List_2D_element constructor_default (LOCATION_ARGS) ;

//--------------------------------- Default constructor
  public : GALGAS_uint_33__32_List_2D_element (void) ;

//--------------------------------- Virtual destructor (in debug mode)
  public : virtual ~ GALGAS_uint_33__32_List_2D_element (void) ;

//--------------------------------- Native constructor
  public : GALGAS_uint_33__32_List_2D_element (const GALGAS_location & in_location,
                                               const GALGAS_uint & in_value) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_uint_33__32_List_2D_element extractObject (const GALGAS_object & inObject,
                                                                    C_Compiler * inCompiler
                                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_uint_33__32_List_2D_element constructor_new (const class GALGAS_location & inOperand0,
                                                                            const class GALGAS_uint & inOperand1
                                                                            COMMA_LOCATION_ARGS) ;

//--------------------------------- Implementation of getter 'description'
  public : VIRTUAL_IN_DEBUG void description (C_String & ioString,
                                              const int32_t inIndentation) const ;
//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_uint_33__32_List_2D_element & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_location (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint getter_value (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_uint_33__32_List_2D_element class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_uint_33__32_List_2D_element ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                  @uint64List list                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_uint_36__34_List : public AC_GALGAS_list {
//--------------------------------- Default constructor
  public : GALGAS_uint_36__34_List (void) ;

//--------------------------------- List constructor used by listmap
  public : GALGAS_uint_36__34_List (const capCollectionElementArray & inSharedArray) ;

//--------------------------------- Element constructor
  public : static void makeAttributesFromObjects (capCollectionElement & outAttributes,
                                                  const class GALGAS_location & in_location,
                                                  const class GALGAS_uint_36__34_ & in_value
                                                  COMMA_LOCATION_ARGS) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_uint_36__34_List extractObject (const GALGAS_object & inObject,
                                                         C_Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_uint_36__34_List constructor_emptyList (LOCATION_ARGS) ;

  public : static class GALGAS_uint_36__34_List constructor_listWithValue (const class GALGAS_location & inOperand0,
                                                                           const class GALGAS_uint_36__34_ & inOperand1
                                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with expression)
  public : VIRTUAL_IN_DEBUG void plusAssign_operation (const GALGAS_uint_36__34_List inOperand,
                                                       class C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with list of field expressions)
  public : VIRTUAL_IN_DEBUG void addAssign_operation (const class GALGAS_location & inOperand0,
                                                      const class GALGAS_uint_36__34_ & inOperand1
                                                      COMMA_LOCATION_ARGS) ;
//--------------------------------- + operator
  public : VIRTUAL_IN_DEBUG GALGAS_uint_36__34_List add_operation (const GALGAS_uint_36__34_List & inOperand,
                                                                   C_Compiler * inCompiler
                                                                   COMMA_LOCATION_ARGS) const ;


//--------------------------------- Setters
  public : VIRTUAL_IN_DEBUG void setter_append (class GALGAS_uint_36__34_List_2D_element inArgument0,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_insertAtIndex (class GALGAS_location constinArgument0,
                                                       class GALGAS_uint_36__34_ constinArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popFirst (class GALGAS_location & outArgument0,
                                                  class GALGAS_uint_36__34_ & outArgument1,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popLast (class GALGAS_location & outArgument0,
                                                 class GALGAS_uint_36__34_ & outArgument1,
                                                 C_Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_removeAtIndex (class GALGAS_location & outArgument0,
                                                       class GALGAS_uint_36__34_ & outArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;


//--------------------------------- Instance Methods
  public : VIRTUAL_IN_DEBUG void method_first (class GALGAS_location & outArgument0,
                                               class GALGAS_uint_36__34_ & outArgument1,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG void method_last (class GALGAS_location & outArgument0,
                                              class GALGAS_uint_36__34_ & outArgument1,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) const ;

//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_locationAtIndex (const class GALGAS_uint & constinOperand0,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint_36__34_List getter_subListFromIndex (const class GALGAS_uint & constinOperand0,
                                                                                   C_Compiler * inCompiler
                                                                                   COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint_36__34_List getter_subListToIndex (const class GALGAS_uint & constinOperand0,
                                                                                 C_Compiler * inCompiler
                                                                                 COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint_36__34_List getter_subListWithRange (const class GALGAS_range & constinOperand0,
                                                                                   C_Compiler * inCompiler
                                                                                   COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint_36__34_ getter_valueAtIndex (const class GALGAS_uint & constinOperand0,
                                                                           C_Compiler * inCompiler
                                                                           COMMA_LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
//--------------------------------- Friend

  friend class cEnumerator_uint_36__34_List ;
 
} ; // End of GALGAS_uint_36__34_List class

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Enumerator declaration                                                                                            *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cEnumerator_uint_36__34_List : public cGenericAbstractEnumerator {
  public : cEnumerator_uint_36__34_List (const GALGAS_uint_36__34_List & inEnumeratedObject,
                                         const typeEnumerationOrder inOrder) ;

//--- Current element access
  public : class GALGAS_location current_location (LOCATION_ARGS) const ;
  public : class GALGAS_uint_36__34_ current_value (LOCATION_ARGS) const ;
//--- Current element access
  public : class GALGAS_uint_36__34_List_2D_element current (LOCATION_ARGS) const ;
} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_uint_36__34_List ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @uint_36__34_List_2D_element struct                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_uint_36__34_List_2D_element : public AC_GALGAS_root {
//--------------------------------- Properties
  public : GALGAS_location mProperty_location ;

  public : GALGAS_uint_36__34_ mProperty_value ;

//--------------------------------- Accessors
  public : VIRTUAL_IN_DEBUG bool isValid (void) const ;
  public : VIRTUAL_IN_DEBUG void drop (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_uint_36__34_List_2D_element constructor_default (LOCATION_ARGS) ;

//--------------------------------- Default constructor
  public : GALGAS_uint_36__34_List_2D_element (void) ;

//--------------------------------- Virtual destructor (in debug mode)
  public : virtual ~ GALGAS_uint_36__34_List_2D_element (void) ;

//--------------------------------- Native constructor
  public : GALGAS_uint_36__34_List_2D_element (const GALGAS_location & in_location,
                                               const GALGAS_uint_36__34_ & in_value) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_uint_36__34_List_2D_element extractObject (const GALGAS_object & inObject,
                                                                    C_Compiler * inCompiler
                                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_uint_36__34_List_2D_element constructor_new (const class GALGAS_location & inOperand0,
                                                                            const class GALGAS_uint_36__34_ & inOperand1
                                                                            COMMA_LOCATION_ARGS) ;

//--------------------------------- Implementation of getter 'description'
  public : VIRTUAL_IN_DEBUG void description (C_String & ioString,
                                              const int32_t inIndentation) const ;
//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_uint_36__34_List_2D_element & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_location (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_uint_36__34_ getter_value (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_uint_36__34_List_2D_element class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_uint_36__34_List_2D_element ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                  @sint32List list                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_sint_33__32_List : public AC_GALGAS_list {
//--------------------------------- Default constructor
  public : GALGAS_sint_33__32_List (void) ;

//--------------------------------- List constructor used by listmap
  public : GALGAS_sint_33__32_List (const capCollectionElementArray & inSharedArray) ;

//--------------------------------- Element constructor
  public : static void makeAttributesFromObjects (capCollectionElement & outAttributes,
                                                  const class GALGAS_location & in_location,
                                                  const class GALGAS_sint & in_value
                                                  COMMA_LOCATION_ARGS) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_sint_33__32_List extractObject (const GALGAS_object & inObject,
                                                         C_Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_sint_33__32_List constructor_emptyList (LOCATION_ARGS) ;

  public : static class GALGAS_sint_33__32_List constructor_listWithValue (const class GALGAS_location & inOperand0,
                                                                           const class GALGAS_sint & inOperand1
                                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with expression)
  public : VIRTUAL_IN_DEBUG void plusAssign_operation (const GALGAS_sint_33__32_List inOperand,
                                                       class C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with list of field expressions)
  public : VIRTUAL_IN_DEBUG void addAssign_operation (const class GALGAS_location & inOperand0,
                                                      const class GALGAS_sint & inOperand1
                                                      COMMA_LOCATION_ARGS) ;
//--------------------------------- + operator
  public : VIRTUAL_IN_DEBUG GALGAS_sint_33__32_List add_operation (const GALGAS_sint_33__32_List & inOperand,
                                                                   C_Compiler * inCompiler
                                                                   COMMA_LOCATION_ARGS) const ;


//--------------------------------- Setters
  public : VIRTUAL_IN_DEBUG void setter_append (class GALGAS_sint_33__32_List_2D_element inArgument0,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_insertAtIndex (class GALGAS_location constinArgument0,
                                                       class GALGAS_sint constinArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popFirst (class GALGAS_location & outArgument0,
                                                  class GALGAS_sint & outArgument1,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popLast (class GALGAS_location & outArgument0,
                                                 class GALGAS_sint & outArgument1,
                                                 C_Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_removeAtIndex (class GALGAS_location & outArgument0,
                                                       class GALGAS_sint & outArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;


//--------------------------------- Instance Methods
  public : VIRTUAL_IN_DEBUG void method_first (class GALGAS_location & outArgument0,
                                               class GALGAS_sint & outArgument1,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG void method_last (class GALGAS_location & outArgument0,
                                              class GALGAS_sint & outArgument1,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) const ;

//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_locationAtIndex (const class GALGAS_uint & constinOperand0,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint_33__32_List getter_subListFromIndex (const class GALGAS_uint & constinOperand0,
                                                                                   C_Compiler * inCompiler
                                                                                   COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint_33__32_List getter_subListToIndex (const class GALGAS_uint & constinOperand0,
                                                                                 C_Compiler * inCompiler
                                                                                 COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint_33__32_List getter_subListWithRange (const class GALGAS_range & constinOperand0,
                                                                                   C_Compiler * inCompiler
                                                                                   COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint getter_valueAtIndex (const class GALGAS_uint & constinOperand0,
                                                                   C_Compiler * inCompiler
                                                                   COMMA_LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
//--------------------------------- Friend

  friend class cEnumerator_sint_33__32_List ;
 
} ; // End of GALGAS_sint_33__32_List class

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Enumerator declaration                                                                                            *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cEnumerator_sint_33__32_List : public cGenericAbstractEnumerator {
  public : cEnumerator_sint_33__32_List (const GALGAS_sint_33__32_List & inEnumeratedObject,
                                         const typeEnumerationOrder inOrder) ;

//--- Current element access
  public : class GALGAS_location current_location (LOCATION_ARGS) const ;
  public : class GALGAS_sint current_value (LOCATION_ARGS) const ;
//--- Current element access
  public : class GALGAS_sint_33__32_List_2D_element current (LOCATION_ARGS) const ;
} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_sint_33__32_List ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @sint_33__32_List_2D_element struct                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_sint_33__32_List_2D_element : public AC_GALGAS_root {
//--------------------------------- Properties
  public : GALGAS_location mProperty_location ;

  public : GALGAS_sint mProperty_value ;

//--------------------------------- Accessors
  public : VIRTUAL_IN_DEBUG bool isValid (void) const ;
  public : VIRTUAL_IN_DEBUG void drop (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_sint_33__32_List_2D_element constructor_default (LOCATION_ARGS) ;

//--------------------------------- Default constructor
  public : GALGAS_sint_33__32_List_2D_element (void) ;

//--------------------------------- Virtual destructor (in debug mode)
  public : virtual ~ GALGAS_sint_33__32_List_2D_element (void) ;

//--------------------------------- Native constructor
  public : GALGAS_sint_33__32_List_2D_element (const GALGAS_location & in_location,
                                               const GALGAS_sint & in_value) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_sint_33__32_List_2D_element extractObject (const GALGAS_object & inObject,
                                                                    C_Compiler * inCompiler
                                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_sint_33__32_List_2D_element constructor_new (const class GALGAS_location & inOperand0,
                                                                            const class GALGAS_sint & inOperand1
                                                                            COMMA_LOCATION_ARGS) ;

//--------------------------------- Implementation of getter 'description'
  public : VIRTUAL_IN_DEBUG void description (C_String & ioString,
                                              const int32_t inIndentation) const ;
//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_sint_33__32_List_2D_element & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_location (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint getter_value (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_sint_33__32_List_2D_element class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_sint_33__32_List_2D_element ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                  @sint64List list                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_sint_36__34_List : public AC_GALGAS_list {
//--------------------------------- Default constructor
  public : GALGAS_sint_36__34_List (void) ;

//--------------------------------- List constructor used by listmap
  public : GALGAS_sint_36__34_List (const capCollectionElementArray & inSharedArray) ;

//--------------------------------- Element constructor
  public : static void makeAttributesFromObjects (capCollectionElement & outAttributes,
                                                  const class GALGAS_location & in_location,
                                                  const class GALGAS_sint_36__34_ & in_value
                                                  COMMA_LOCATION_ARGS) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_sint_36__34_List extractObject (const GALGAS_object & inObject,
                                                         C_Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_sint_36__34_List constructor_emptyList (LOCATION_ARGS) ;

  public : static class GALGAS_sint_36__34_List constructor_listWithValue (const class GALGAS_location & inOperand0,
                                                                           const class GALGAS_sint_36__34_ & inOperand1
                                                                           COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with expression)
  public : VIRTUAL_IN_DEBUG void plusAssign_operation (const GALGAS_sint_36__34_List inOperand,
                                                       class C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with list of field expressions)
  public : VIRTUAL_IN_DEBUG void addAssign_operation (const class GALGAS_location & inOperand0,
                                                      const class GALGAS_sint_36__34_ & inOperand1
                                                      COMMA_LOCATION_ARGS) ;
//--------------------------------- + operator
  public : VIRTUAL_IN_DEBUG GALGAS_sint_36__34_List add_operation (const GALGAS_sint_36__34_List & inOperand,
                                                                   C_Compiler * inCompiler
                                                                   COMMA_LOCATION_ARGS) const ;


//--------------------------------- Setters
  public : VIRTUAL_IN_DEBUG void setter_append (class GALGAS_sint_36__34_List_2D_element inArgument0,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_insertAtIndex (class GALGAS_location constinArgument0,
                                                       class GALGAS_sint_36__34_ constinArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popFirst (class GALGAS_location & outArgument0,
                                                  class GALGAS_sint_36__34_ & outArgument1,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popLast (class GALGAS_location & outArgument0,
                                                 class GALGAS_sint_36__34_ & outArgument1,
                                                 C_Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_removeAtIndex (class GALGAS_location & outArgument0,
                                                       class GALGAS_sint_36__34_ & outArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;


//--------------------------------- Instance Methods
  public : VIRTUAL_IN_DEBUG void method_first (class GALGAS_location & outArgument0,
                                               class GALGAS_sint_36__34_ & outArgument1,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG void method_last (class GALGAS_location & outArgument0,
                                              class GALGAS_sint_36__34_ & outArgument1,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) const ;

//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_locationAtIndex (const class GALGAS_uint & constinOperand0,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint_36__34_List getter_subListFromIndex (const class GALGAS_uint & constinOperand0,
                                                                                   C_Compiler * inCompiler
                                                                                   COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint_36__34_List getter_subListToIndex (const class GALGAS_uint & constinOperand0,
                                                                                 C_Compiler * inCompiler
                                                                                 COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint_36__34_List getter_subListWithRange (const class GALGAS_range & constinOperand0,
                                                                                   C_Compiler * inCompiler
                                                                                   COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint_36__34_ getter_valueAtIndex (const class GALGAS_uint & constinOperand0,
                                                                           C_Compiler * inCompiler
                                                                           COMMA_LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
//--------------------------------- Friend

  friend class cEnumerator_sint_36__34_List ;
 
} ; // End of GALGAS_sint_36__34_List class

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Enumerator declaration                                                                                            *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cEnumerator_sint_36__34_List : public cGenericAbstractEnumerator {
  public : cEnumerator_sint_36__34_List (const GALGAS_sint_36__34_List & inEnumeratedObject,
                                         const typeEnumerationOrder inOrder) ;

//--- Current element access
  public : class GALGAS_location current_location (LOCATION_ARGS) const ;
  public : class GALGAS_sint_36__34_ current_value (LOCATION_ARGS) const ;
//--- Current element access
  public : class GALGAS_sint_36__34_List_2D_element current (LOCATION_ARGS) const ;
} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_sint_36__34_List ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                         @sint_36__34_List_2D_element struct                                         *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_sint_36__34_List_2D_element : public AC_GALGAS_root {
//--------------------------------- Properties
  public : GALGAS_location mProperty_location ;

  public : GALGAS_sint_36__34_ mProperty_value ;

//--------------------------------- Accessors
  public : VIRTUAL_IN_DEBUG bool isValid (void) const ;
  public : VIRTUAL_IN_DEBUG void drop (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_sint_36__34_List_2D_element constructor_default (LOCATION_ARGS) ;

//--------------------------------- Default constructor
  public : GALGAS_sint_36__34_List_2D_element (void) ;

//--------------------------------- Virtual destructor (in debug mode)
  public : virtual ~ GALGAS_sint_36__34_List_2D_element (void) ;

//--------------------------------- Native constructor
  public : GALGAS_sint_36__34_List_2D_element (const GALGAS_location & in_location,
                                               const GALGAS_sint_36__34_ & in_value) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_sint_36__34_List_2D_element extractObject (const GALGAS_object & inObject,
                                                                    C_Compiler * inCompiler
                                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_sint_36__34_List_2D_element constructor_new (const class GALGAS_location & inOperand0,
                                                                            const class GALGAS_sint_36__34_ & inOperand1
                                                                            COMMA_LOCATION_ARGS) ;

//--------------------------------- Implementation of getter 'description'
  public : VIRTUAL_IN_DEBUG void description (C_String & ioString,
                                              const int32_t inIndentation) const ;
//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_sint_36__34_List_2D_element & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_location (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_sint_36__34_ getter_value (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_sint_36__34_List_2D_element class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_sint_36__34_List_2D_element ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @floatList list                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_floatList : public AC_GALGAS_list {
//--------------------------------- Default constructor
  public : GALGAS_floatList (void) ;

//--------------------------------- List constructor used by listmap
  public : GALGAS_floatList (const capCollectionElementArray & inSharedArray) ;

//--------------------------------- Element constructor
  public : static void makeAttributesFromObjects (capCollectionElement & outAttributes,
                                                  const class GALGAS_location & in_location,
                                                  const class GALGAS_double & in_value
                                                  COMMA_LOCATION_ARGS) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_floatList extractObject (const GALGAS_object & inObject,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_floatList constructor_emptyList (LOCATION_ARGS) ;

  public : static class GALGAS_floatList constructor_listWithValue (const class GALGAS_location & inOperand0,
                                                                    const class GALGAS_double & inOperand1
                                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with expression)
  public : VIRTUAL_IN_DEBUG void plusAssign_operation (const GALGAS_floatList inOperand,
                                                       class C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with list of field expressions)
  public : VIRTUAL_IN_DEBUG void addAssign_operation (const class GALGAS_location & inOperand0,
                                                      const class GALGAS_double & inOperand1
                                                      COMMA_LOCATION_ARGS) ;
//--------------------------------- + operator
  public : VIRTUAL_IN_DEBUG GALGAS_floatList add_operation (const GALGAS_floatList & inOperand,
                                                            C_Compiler * inCompiler
                                                            COMMA_LOCATION_ARGS) const ;


//--------------------------------- Setters
  public : VIRTUAL_IN_DEBUG void setter_append (class GALGAS_floatList_2D_element inArgument0,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_insertAtIndex (class GALGAS_location constinArgument0,
                                                       class GALGAS_double constinArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popFirst (class GALGAS_location & outArgument0,
                                                  class GALGAS_double & outArgument1,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popLast (class GALGAS_location & outArgument0,
                                                 class GALGAS_double & outArgument1,
                                                 C_Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_removeAtIndex (class GALGAS_location & outArgument0,
                                                       class GALGAS_double & outArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;


//--------------------------------- Instance Methods
  public : VIRTUAL_IN_DEBUG void method_first (class GALGAS_location & outArgument0,
                                               class GALGAS_double & outArgument1,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG void method_last (class GALGAS_location & outArgument0,
                                              class GALGAS_double & outArgument1,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) const ;

//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_locationAtIndex (const class GALGAS_uint & constinOperand0,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_floatList getter_subListFromIndex (const class GALGAS_uint & constinOperand0,
                                                                            C_Compiler * inCompiler
                                                                            COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_floatList getter_subListToIndex (const class GALGAS_uint & constinOperand0,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_floatList getter_subListWithRange (const class GALGAS_range & constinOperand0,
                                                                            C_Compiler * inCompiler
                                                                            COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_double getter_valueAtIndex (const class GALGAS_uint & constinOperand0,
                                                                     C_Compiler * inCompiler
                                                                     COMMA_LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
//--------------------------------- Friend

  friend class cEnumerator_floatList ;
 
} ; // End of GALGAS_floatList class

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Enumerator declaration                                                                                            *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cEnumerator_floatList : public cGenericAbstractEnumerator {
  public : cEnumerator_floatList (const GALGAS_floatList & inEnumeratedObject,
                                  const typeEnumerationOrder inOrder) ;

//--- Current element access
  public : class GALGAS_location current_location (LOCATION_ARGS) const ;
  public : class GALGAS_double current_value (LOCATION_ARGS) const ;
//--- Current element access
  public : class GALGAS_floatList_2D_element current (LOCATION_ARGS) const ;
} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_floatList ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                            @floatList_2D_element struct                                             *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_floatList_2D_element : public AC_GALGAS_root {
//--------------------------------- Properties
  public : GALGAS_location mProperty_location ;

  public : GALGAS_double mProperty_value ;

//--------------------------------- Accessors
  public : VIRTUAL_IN_DEBUG bool isValid (void) const ;
  public : VIRTUAL_IN_DEBUG void drop (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_floatList_2D_element constructor_default (LOCATION_ARGS) ;

//--------------------------------- Default constructor
  public : GALGAS_floatList_2D_element (void) ;

//--------------------------------- Virtual destructor (in debug mode)
  public : virtual ~ GALGAS_floatList_2D_element (void) ;

//--------------------------------- Native constructor
  public : GALGAS_floatList_2D_element (const GALGAS_location & in_location,
                                        const GALGAS_double & in_value) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_floatList_2D_element extractObject (const GALGAS_object & inObject,
                                                             C_Compiler * inCompiler
                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_floatList_2D_element constructor_new (const class GALGAS_location & inOperand0,
                                                                     const class GALGAS_double & inOperand1
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- Implementation of getter 'description'
  public : VIRTUAL_IN_DEBUG void description (C_String & ioString,
                                              const int32_t inIndentation) const ;
//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_floatList_2D_element & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_location (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_double getter_value (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_floatList_2D_element class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_floatList_2D_element ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                  @numberList list                                                   *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_numberList : public AC_GALGAS_list {
//--------------------------------- Default constructor
  public : GALGAS_numberList (void) ;

//--------------------------------- List constructor used by listmap
  public : GALGAS_numberList (const capCollectionElementArray & inSharedArray) ;

//--------------------------------- Element constructor
  public : static void makeAttributesFromObjects (capCollectionElement & outAttributes,
                                                  const class GALGAS_location & in_location,
                                                  const class GALGAS_object_5F_t & in_value
                                                  COMMA_LOCATION_ARGS) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_numberList extractObject (const GALGAS_object & inObject,
                                                   C_Compiler * inCompiler
                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_numberList constructor_emptyList (LOCATION_ARGS) ;

  public : static class GALGAS_numberList constructor_listWithValue (const class GALGAS_location & inOperand0,
                                                                     const class GALGAS_object_5F_t & inOperand1
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with expression)
  public : VIRTUAL_IN_DEBUG void plusAssign_operation (const GALGAS_numberList inOperand,
                                                       class C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- += operator (with list of field expressions)
  public : VIRTUAL_IN_DEBUG void addAssign_operation (const class GALGAS_location & inOperand0,
                                                      const class GALGAS_object_5F_t & inOperand1
                                                      COMMA_LOCATION_ARGS) ;
//--------------------------------- + operator
  public : VIRTUAL_IN_DEBUG GALGAS_numberList add_operation (const GALGAS_numberList & inOperand,
                                                             C_Compiler * inCompiler
                                                             COMMA_LOCATION_ARGS) const ;


//--------------------------------- Setters
  public : VIRTUAL_IN_DEBUG void setter_append (class GALGAS_numberList_2D_element inArgument0,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_insertAtIndex (class GALGAS_location constinArgument0,
                                                       class GALGAS_object_5F_t constinArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popFirst (class GALGAS_location & outArgument0,
                                                  class GALGAS_object_5F_t & outArgument1,
                                                  C_Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_popLast (class GALGAS_location & outArgument0,
                                                 class GALGAS_object_5F_t & outArgument1,
                                                 C_Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

  public : VIRTUAL_IN_DEBUG void setter_removeAtIndex (class GALGAS_location & outArgument0,
                                                       class GALGAS_object_5F_t & outArgument1,
                                                       class GALGAS_uint constinArgument2,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;


//--------------------------------- Instance Methods
  public : VIRTUAL_IN_DEBUG void method_first (class GALGAS_location & outArgument0,
                                               class GALGAS_object_5F_t & outArgument1,
                                               C_Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG void method_last (class GALGAS_location & outArgument0,
                                              class GALGAS_object_5F_t & outArgument1,
                                              C_Compiler * inCompiler
                                              COMMA_LOCATION_ARGS) const ;

//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_locationAtIndex (const class GALGAS_uint & constinOperand0,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_numberList getter_subListFromIndex (const class GALGAS_uint & constinOperand0,
                                                                             C_Compiler * inCompiler
                                                                             COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_numberList getter_subListToIndex (const class GALGAS_uint & constinOperand0,
                                                                           C_Compiler * inCompiler
                                                                           COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_numberList getter_subListWithRange (const class GALGAS_range & constinOperand0,
                                                                             C_Compiler * inCompiler
                                                                             COMMA_LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_object_5F_t getter_valueAtIndex (const class GALGAS_uint & constinOperand0,
                                                                          C_Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
//--------------------------------- Friend

  friend class cEnumerator_numberList ;
 
} ; // End of GALGAS_numberList class

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//   Enumerator declaration                                                                                            *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cEnumerator_numberList : public cGenericAbstractEnumerator {
  public : cEnumerator_numberList (const GALGAS_numberList & inEnumeratedObject,
                                   const typeEnumerationOrder inOrder) ;

//--- Current element access
  public : class GALGAS_location current_location (LOCATION_ARGS) const ;
  public : class GALGAS_object_5F_t current_value (LOCATION_ARGS) const ;
//--- Current element access
  public : class GALGAS_numberList_2D_element current (LOCATION_ARGS) const ;
} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_numberList ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                 @object_5F_t class                                                  *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_object_5F_t : public AC_GALGAS_class {
//--- Constructor
  public : GALGAS_object_5F_t (void) ;

//---
  public : inline const class cPtr_object_5F_t * ptr (void) const { return (const cPtr_object_5F_t *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_object_5F_t (const cPtr_object_5F_t * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_object_5F_t extractObject (const GALGAS_object & inObject,
                                                    C_Compiler * inCompiler
                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_object_5F_t & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_location (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_lstring getter_oil_5F_desc (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_object_5F_t class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_object_5F_t ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          Pointer class for @object_t class                                          *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_object_5F_t : public acPtr_class {
//--- Attributes
  public : GALGAS_lstring mProperty_oil_5F_desc ;
  public : GALGAS_location mProperty_location ;

//--- Constructor
  public : cPtr_object_5F_t (const GALGAS_lstring & in_oil_5F_desc,
                             const GALGAS_location & in_location
                             COMMA_LOCATION_ARGS) ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_lstring getter_oil_5F_desc (LOCATION_ARGS) const ;
  public : VIRTUAL_IN_DEBUG GALGAS_location getter_location (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const = 0 ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const = 0 ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const = 0 ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                            @numberList_2D_element struct                                            *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_numberList_2D_element : public AC_GALGAS_root {
//--------------------------------- Properties
  public : GALGAS_location mProperty_location ;

  public : GALGAS_object_5F_t mProperty_value ;

//--------------------------------- Accessors
  public : VIRTUAL_IN_DEBUG bool isValid (void) const ;
  public : VIRTUAL_IN_DEBUG void drop (void) ;

//--------------------------------- Default constructor
  public : GALGAS_numberList_2D_element (void) ;

//--------------------------------- Virtual destructor (in debug mode)
  public : virtual ~ GALGAS_numberList_2D_element (void) ;

//--------------------------------- Native constructor
  public : GALGAS_numberList_2D_element (const GALGAS_location & in_location,
                                         const GALGAS_object_5F_t & in_value) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_numberList_2D_element extractObject (const GALGAS_object & inObject,
                                                              C_Compiler * inCompiler
                                                              COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_numberList_2D_element constructor_new (const class GALGAS_location & inOperand0,
                                                                      const class GALGAS_object_5F_t & inOperand1
                                                                      COMMA_LOCATION_ARGS) ;

//--------------------------------- Implementation of getter 'description'
  public : VIRTUAL_IN_DEBUG void description (C_String & ioString,
                                              const int32_t inIndentation) const ;
//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_numberList_2D_element & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_location (LOCATION_ARGS) const ;

  public : VIRTUAL_IN_DEBUG class GALGAS_object_5F_t getter_value (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_numberList_2D_element class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_numberList_2D_element ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                @attributeRange class                                                *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_attributeRange : public AC_GALGAS_class {
//--- Constructor
  public : GALGAS_attributeRange (void) ;

//---
  public : inline const class cPtr_attributeRange * ptr (void) const { return (const cPtr_attributeRange *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_attributeRange (const cPtr_attributeRange * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_attributeRange extractObject (const GALGAS_object & inObject,
                                                       C_Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_attributeRange & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_location getter_location (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_attributeRange class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_attributeRange ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                       Pointer class for @attributeRange class                                       *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_attributeRange : public acPtr_class {
//--- Attributes
  public : GALGAS_location mProperty_location ;

//--- Constructor
  public : cPtr_attributeRange (const GALGAS_location & in_location
                                COMMA_LOCATION_ARGS) ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_location getter_location (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const = 0 ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const = 0 ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const = 0 ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                 Abstract extension method '@attributeRange enclose'                                 *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

typedef void (*extensionMethodSignature_attributeRange_enclose) (const class cPtr_attributeRange * inObject,
                                                                 class GALGAS_bool & outArgument0,
                                                                 const class GALGAS_attributeRange constinArgument1,
                                                                 class C_Compiler * inCompiler
                                                                 COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void enterExtensionMethod_enclose (const int32_t inClassIndex,
                                   extensionMethodSignature_attributeRange_enclose inMethod) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

void callExtensionMethod_enclose (const class cPtr_attributeRange * inObject,
                                  GALGAS_bool & out_isWithin,
                                  const GALGAS_attributeRange constin_value,
                                  C_Compiler * inCompiler
                                  COMMA_LOCATION_ARGS) ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                                   @noRange class                                                    *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_noRange : public GALGAS_attributeRange {
//--- Constructor
  public : GALGAS_noRange (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_noRange constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_noRange * ptr (void) const { return (const cPtr_noRange *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_noRange (const cPtr_noRange * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_noRange extractObject (const GALGAS_object & inObject,
                                                C_Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_noRange constructor_new (const class GALGAS_location & inOperand0
                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_noRange & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters

//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_noRange class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_noRange ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                          Pointer class for @noRange class                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_noRange : public cPtr_attributeRange {
//--- Attributes

//--- Constructor
  public : cPtr_noRange (const GALGAS_location & in_location
                         COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @uint_33__32_AttributeSet class                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_uint_33__32_AttributeSet : public GALGAS_attributeRange {
//--- Constructor
  public : GALGAS_uint_33__32_AttributeSet (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_uint_33__32_AttributeSet constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_uint_33__32_AttributeSet * ptr (void) const { return (const cPtr_uint_33__32_AttributeSet *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_uint_33__32_AttributeSet (const cPtr_uint_33__32_AttributeSet * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_uint_33__32_AttributeSet extractObject (const GALGAS_object & inObject,
                                                                 C_Compiler * inCompiler
                                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_uint_33__32_AttributeSet constructor_new (const class GALGAS_location & inOperand0,
                                                                         const class GALGAS_uint_33__32_List & inOperand1
                                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_uint_33__32_AttributeSet & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_uint_33__32_List getter_valueList (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_uint_33__32_AttributeSet class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_uint_33__32_AttributeSet ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Pointer class for @uint32AttributeSet class                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_uint_33__32_AttributeSet : public cPtr_attributeRange {
//--- Attributes
  public : GALGAS_uint_33__32_List mProperty_valueList ;

//--- Constructor
  public : cPtr_uint_33__32_AttributeSet (const GALGAS_location & in_location,
                                          const GALGAS_uint_33__32_List & in_valueList
                                          COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_uint_33__32_List getter_valueList (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @uint_36__34_AttributeSet class                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_uint_36__34_AttributeSet : public GALGAS_attributeRange {
//--- Constructor
  public : GALGAS_uint_36__34_AttributeSet (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_uint_36__34_AttributeSet constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_uint_36__34_AttributeSet * ptr (void) const { return (const cPtr_uint_36__34_AttributeSet *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_uint_36__34_AttributeSet (const cPtr_uint_36__34_AttributeSet * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_uint_36__34_AttributeSet extractObject (const GALGAS_object & inObject,
                                                                 C_Compiler * inCompiler
                                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_uint_36__34_AttributeSet constructor_new (const class GALGAS_location & inOperand0,
                                                                         const class GALGAS_uint_36__34_List & inOperand1
                                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_uint_36__34_AttributeSet & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_uint_36__34_List getter_valueList (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_uint_36__34_AttributeSet class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_uint_36__34_AttributeSet ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Pointer class for @uint64AttributeSet class                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_uint_36__34_AttributeSet : public cPtr_attributeRange {
//--- Attributes
  public : GALGAS_uint_36__34_List mProperty_valueList ;

//--- Constructor
  public : cPtr_uint_36__34_AttributeSet (const GALGAS_location & in_location,
                                          const GALGAS_uint_36__34_List & in_valueList
                                          COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_uint_36__34_List getter_valueList (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                           @sint_33__32_AttributeSet class                                           *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class GALGAS_sint_33__32_AttributeSet : public GALGAS_attributeRange {
//--- Constructor
  public : GALGAS_sint_33__32_AttributeSet (void) ;

//--------------------------------- Default GALGAS constructor
  public : static GALGAS_sint_33__32_AttributeSet constructor_default (LOCATION_ARGS) ;

//---
  public : inline const class cPtr_sint_33__32_AttributeSet * ptr (void) const { return (const cPtr_sint_33__32_AttributeSet *) mObjectPtr ; }

//--------------------------------- Constructor from pointer
  public : GALGAS_sint_33__32_AttributeSet (const cPtr_sint_33__32_AttributeSet * inSourcePtr) ;

//-- Start of generic part --*

//--------------------------------- Object cloning
  protected : virtual AC_GALGAS_root * clonedObject (void) const ;

//--------------------------------- Object extraction
  public : static GALGAS_sint_33__32_AttributeSet extractObject (const GALGAS_object & inObject,
                                                                 C_Compiler * inCompiler
                                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------- GALGAS constructors
  public : static class GALGAS_sint_33__32_AttributeSet constructor_new (const class GALGAS_location & inOperand0,
                                                                         const class GALGAS_sint_33__32_List & inOperand1
                                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------- Comparison
  public : typeComparisonResult objectCompare (const GALGAS_sint_33__32_AttributeSet & inOperand) const ;

//--------------------------------- Setters

//--------------------------------- Instance Methods
//--------------------------------- Class Methods

//--------------------------------- Getters
  public : VIRTUAL_IN_DEBUG class GALGAS_sint_33__32_List getter_valueList (LOCATION_ARGS) const ;


//--------------------------------- Introspection
  public : VIRTUAL_IN_DEBUG const C_galgas_type_descriptor * staticTypeDescriptor (void) const ;
 
} ; // End of GALGAS_sint_33__32_AttributeSet class


//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

extern const C_galgas_type_descriptor kTypeDescriptor_GALGAS_sint_33__32_AttributeSet ;

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
//                                                                                                                     *
//                                     Pointer class for @sint32AttributeSet class                                     *
//                                                                                                                     *
//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

class cPtr_sint_33__32_AttributeSet : public cPtr_attributeRange {
//--- Attributes
  public : GALGAS_sint_33__32_List mProperty_valueList ;

//--- Constructor
  public : cPtr_sint_33__32_AttributeSet (const GALGAS_location & in_location,
                                          const GALGAS_sint_33__32_List & in_valueList
                                          COMMA_LOCATION_ARGS) ;

//--- Duplication
  public : virtual acPtr_class * duplicate (LOCATION_ARGS) const ;

//--- Attribute accessors
  public : VIRTUAL_IN_DEBUG GALGAS_sint_33__32_List getter_valueList (LOCATION_ARGS) const ;
//--- Description
  public : virtual void description (C_String & ioString,
                                     const int32_t inIndentation) const ;

  public : virtual typeComparisonResult dynamicObjectCompare (const acPtr_class * inOperandPtr) const ;

  public : virtual const C_galgas_type_descriptor * classDescriptor (void) const ;

} ;

