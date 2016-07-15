/*
 * generated by Xtext
 */
grammar PsiInternalEcoreReferenceTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.metamodelreferencing.tests.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.metamodelreferencing.tests.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.metamodelreferencing.tests.idea.lang.EcoreReferenceTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.metamodelreferencing.tests.services.EcoreReferenceTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected EcoreReferenceTestLanguageGrammarAccess grammarAccess;

	protected EcoreReferenceTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalEcoreReferenceTestLanguageParser(PsiBuilder builder, TokenStream input, EcoreReferenceTestLanguageElementTypeProvider elementTypeProvider, EcoreReferenceTestLanguageGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "Model";
	}

}

//Entry rule entryRuleModel
entryRuleModel returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getModelElementType()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [Boolean current=false]
:
	(
		(
			(
				{
					markComposite(elementTypeProvider.getModel_ExtendsExtendsNsURIEObjectParserRuleCall_0_0ElementType());
				}
				lv_extends_0_0=ruleExtendsNsURIEObject
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		(
			(
				{
					markComposite(elementTypeProvider.getModel_ExtendsExtendsPluginEObjectParserRuleCall_1_0ElementType());
				}
				lv_extends_1_0=ruleExtendsPluginEObject
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		(
			(
				{
					markComposite(elementTypeProvider.getModel_ExtendsExtendsResourceEObjectParserRuleCall_2_0ElementType());
				}
				lv_extends_2_0=ruleExtendsResourceEObject
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
	)
;

//Entry rule entryRuleExtendsNsURIEObject
entryRuleExtendsNsURIEObject returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getExtendsNsURIEObjectElementType()); }
	iv_ruleExtendsNsURIEObject=ruleExtendsNsURIEObject
	{ $current=$iv_ruleExtendsNsURIEObject.current; }
	EOF;

// Rule ExtendsNsURIEObject
ruleExtendsNsURIEObject returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getExtendsNsURIEObject_ExtendsNsURIEObjectKeyword_0ElementType());
		}
		otherlv_0='ExtendsNsURIEObject'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getExtendsNsURIEObject_NameValidIDParserRuleCall_1_0ElementType());
				}
				lv_name_1_0=ruleValidID
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getExtendsNsURIEObject_EObjectKeyword_2_0_0ElementType());
				}
				otherlv_2='EObject'
				{
					doneLeaf(otherlv_2);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsNsURIEObject_EObjectReference1EObjectCrossReference_2_0_1_0ElementType());
						}
						otherlv_3=RULE_ID
						{
							doneLeaf(otherlv_3);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsNsURIEObject_ExtendsNsURIEObjectKeyword_2_1_0ElementType());
				}
				otherlv_4='ExtendsNsURIEObject'
				{
					doneLeaf(otherlv_4);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsNsURIEObject_EObjectReference1ExtendsNsURIEObjectCrossReference_2_1_1_0ElementType());
						}
						otherlv_5=RULE_ID
						{
							doneLeaf(otherlv_5);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsNsURIEObject_ExtendsPluginEObjectKeyword_2_2_0ElementType());
				}
				otherlv_6='ExtendsPluginEObject'
				{
					doneLeaf(otherlv_6);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsNsURIEObject_EObjectReference1ExtendsPluginEObjectCrossReference_2_2_1_0ElementType());
						}
						otherlv_7=RULE_ID
						{
							doneLeaf(otherlv_7);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsNsURIEObject_ExtendsResourceEObjectKeyword_2_3_0ElementType());
				}
				otherlv_8='ExtendsResourceEObject'
				{
					doneLeaf(otherlv_8);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsNsURIEObject_EObjectReference1ExtendsResourceEObjectCrossReference_2_3_1_0ElementType());
						}
						otherlv_9=RULE_ID
						{
							doneLeaf(otherlv_9);
						}
					)
				)
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getExtendsNsURIEObject_ExtendsPluginEObjectKeyword_3_0ElementType());
			}
			otherlv_10='ExtendsPluginEObject'
			{
				doneLeaf(otherlv_10);
			}
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsNsURIEObject_EAttributeReferenceMyEAttributeCrossReference_3_1_0ElementType());
					}
					otherlv_11=RULE_ID
					{
						doneLeaf(otherlv_11);
					}
				)
			)
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsNsURIEObject_EObjectReference2ExtendsNsURIEObjectCrossReference_3_2_0ElementType());
					}
					otherlv_12=RULE_ID
					{
						doneLeaf(otherlv_12);
					}
				)
			)
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsNsURIEObject_EObjectReference3ExtendsPluginEObjectCrossReference_3_3_0ElementType());
					}
					otherlv_13=RULE_ID
					{
						doneLeaf(otherlv_13);
					}
				)
			)
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsNsURIEObject_EObjectReference4ExtendsResourceEObjectCrossReference_3_4_0ElementType());
					}
					otherlv_14=RULE_ID
					{
						doneLeaf(otherlv_14);
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsNsURIEObject_EObjectContainmentExtendsNsURIEObjectParserRuleCall_3_5_0ElementType());
					}
					lv_eObjectContainment_15_0=ruleExtendsNsURIEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)?
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsNsURIEObject_EObjectContainmentExtendsPluginEObjectParserRuleCall_3_6_0ElementType());
					}
					lv_eObjectContainment_16_0=ruleExtendsPluginEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)?
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsNsURIEObject_EObjectContainmentExtendsResourceEObjectParserRuleCall_3_7_0ElementType());
					}
					lv_eObjectContainment_17_0=ruleExtendsResourceEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)?
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsNsURIEObject_EObjectContainmentEObjectParserRuleCall_3_8_0ElementType());
					}
					lv_eObjectContainment_18_0=ruleEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsNsURIEObject_EObjectContainmentEAttributeParserRuleCall_3_9_0ElementType());
					}
					lv_eObjectContainment_19_0=ruleEAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsNsURIEObject_EObjectContainmentMyEAttributeParserRuleCall_3_10_0ElementType());
					}
					lv_eObjectContainment_20_0=ruleMyEAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
		)?
	)
;

//Entry rule entryRuleMyEAttribute
entryRuleMyEAttribute returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getMyEAttributeElementType()); }
	iv_ruleMyEAttribute=ruleMyEAttribute
	{ $current=$iv_ruleMyEAttribute.current; }
	EOF;

// Rule MyEAttribute
ruleMyEAttribute returns [Boolean current=false]
:
	(
		(
			{
				precedeComposite(elementTypeProvider.getMyEAttribute_MyEAttributeAction_0ElementType());
				doneComposite();
				associateWithSemanticElement();
			}
		)
		{
			markLeaf(elementTypeProvider.getMyEAttribute_MyEAttributeKeyword_1ElementType());
		}
		otherlv_1='MyEAttribute'
		{
			doneLeaf(otherlv_1);
		}
	)
;

//Entry rule entryRuleEAttribute
entryRuleEAttribute returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getEAttributeElementType()); }
	iv_ruleEAttribute=ruleEAttribute
	{ $current=$iv_ruleEAttribute.current; }
	EOF;

// Rule EAttribute
ruleEAttribute returns [Boolean current=false]
:
	(
		(
			{
				precedeComposite(elementTypeProvider.getEAttribute_EAttributeAction_0ElementType());
				doneComposite();
				associateWithSemanticElement();
			}
		)
		{
			markLeaf(elementTypeProvider.getEAttribute_EAttributeKeyword_1ElementType());
		}
		otherlv_1='EAttribute'
		{
			doneLeaf(otherlv_1);
		}
	)
;

//Entry rule entryRuleExtendsPluginEObject
entryRuleExtendsPluginEObject returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getExtendsPluginEObjectElementType()); }
	iv_ruleExtendsPluginEObject=ruleExtendsPluginEObject
	{ $current=$iv_ruleExtendsPluginEObject.current; }
	EOF;

// Rule ExtendsPluginEObject
ruleExtendsPluginEObject returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getExtendsPluginEObject_ExtendsPluginEObjectKeyword_0ElementType());
		}
		otherlv_0='ExtendsPluginEObject'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getExtendsPluginEObject_NameValidIDParserRuleCall_1_0ElementType());
				}
				lv_name_1_0=ruleValidID
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getExtendsPluginEObject_EObjectKeyword_2_0_0ElementType());
				}
				otherlv_2='EObject'
				{
					doneLeaf(otherlv_2);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsPluginEObject_EObjectReference1EObjectCrossReference_2_0_1_0ElementType());
						}
						otherlv_3=RULE_ID
						{
							doneLeaf(otherlv_3);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsPluginEObject_ExtendsNsURIEObjectKeyword_2_1_0ElementType());
				}
				otherlv_4='ExtendsNsURIEObject'
				{
					doneLeaf(otherlv_4);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsPluginEObject_EObjectReference1ExtendsNsURIEObjectCrossReference_2_1_1_0ElementType());
						}
						otherlv_5=RULE_ID
						{
							doneLeaf(otherlv_5);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsPluginEObject_ExtendsPluginEObjectKeyword_2_2_0ElementType());
				}
				otherlv_6='ExtendsPluginEObject'
				{
					doneLeaf(otherlv_6);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsPluginEObject_EObjectReference1ExtendsPluginEObjectCrossReference_2_2_1_0ElementType());
						}
						otherlv_7=RULE_ID
						{
							doneLeaf(otherlv_7);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsPluginEObject_ExtendsResourceEObjectKeyword_2_3_0ElementType());
				}
				otherlv_8='ExtendsResourceEObject'
				{
					doneLeaf(otherlv_8);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsPluginEObject_EObjectReference1ExtendsResourceEObjectCrossReference_2_3_1_0ElementType());
						}
						otherlv_9=RULE_ID
						{
							doneLeaf(otherlv_9);
						}
					)
				)
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getExtendsPluginEObject_ExtendsPluginEObjectKeyword_3_0ElementType());
			}
			otherlv_10='ExtendsPluginEObject'
			{
				doneLeaf(otherlv_10);
			}
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsPluginEObject_EObjectReference2ExtendsNsURIEObjectCrossReference_3_1_0ElementType());
					}
					otherlv_11=RULE_ID
					{
						doneLeaf(otherlv_11);
					}
				)
			)
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsPluginEObject_EObjectReference3ExtendsPluginEObjectCrossReference_3_2_0ElementType());
					}
					otherlv_12=RULE_ID
					{
						doneLeaf(otherlv_12);
					}
				)
			)
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsPluginEObject_EObjectReference4ExtendsResourceEObjectCrossReference_3_3_0ElementType());
					}
					otherlv_13=RULE_ID
					{
						doneLeaf(otherlv_13);
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsPluginEObject_EObjectContainmentExtendsNsURIEObjectParserRuleCall_3_4_0ElementType());
					}
					lv_eObjectContainment_14_0=ruleExtendsNsURIEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)?
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsPluginEObject_EObjectContainmentExtendsPluginEObjectParserRuleCall_3_5_0ElementType());
					}
					lv_eObjectContainment_15_0=ruleExtendsPluginEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)?
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsPluginEObject_EObjectContainmentExtendsResourceEObjectParserRuleCall_3_6_0ElementType());
					}
					lv_eObjectContainment_16_0=ruleExtendsResourceEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)?
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsPluginEObject_EObjectContainmentEObjectParserRuleCall_3_7_0ElementType());
					}
					lv_eObjectContainment_17_0=ruleEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsPluginEObject_EObjectContainmentEAttributeParserRuleCall_3_8_0ElementType());
					}
					lv_eObjectContainment_18_0=ruleEAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsPluginEObject_EObjectContainmentMyEAttributeParserRuleCall_3_9_0ElementType());
					}
					lv_eObjectContainment_19_0=ruleMyEAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
		)?
	)
;

//Entry rule entryRuleExtendsResourceEObject
entryRuleExtendsResourceEObject returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getExtendsResourceEObjectElementType()); }
	iv_ruleExtendsResourceEObject=ruleExtendsResourceEObject
	{ $current=$iv_ruleExtendsResourceEObject.current; }
	EOF;

// Rule ExtendsResourceEObject
ruleExtendsResourceEObject returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getExtendsResourceEObject_ExtendsResourceEObjectKeyword_0ElementType());
		}
		otherlv_0='ExtendsResourceEObject'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getExtendsResourceEObject_NameValidIDParserRuleCall_1_0ElementType());
				}
				lv_name_1_0=ruleValidID
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getExtendsResourceEObject_EObjectKeyword_2_0_0ElementType());
				}
				otherlv_2='EObject'
				{
					doneLeaf(otherlv_2);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsResourceEObject_EObjectReference1EObjectCrossReference_2_0_1_0ElementType());
						}
						otherlv_3=RULE_ID
						{
							doneLeaf(otherlv_3);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsResourceEObject_ExtendsNsURIEObjectKeyword_2_1_0ElementType());
				}
				otherlv_4='ExtendsNsURIEObject'
				{
					doneLeaf(otherlv_4);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsResourceEObject_EObjectReference1ExtendsNsURIEObjectCrossReference_2_1_1_0ElementType());
						}
						otherlv_5=RULE_ID
						{
							doneLeaf(otherlv_5);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsResourceEObject_ExtendsPluginEObjectKeyword_2_2_0ElementType());
				}
				otherlv_6='ExtendsPluginEObject'
				{
					doneLeaf(otherlv_6);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsResourceEObject_EObjectReference1ExtendsPluginEObjectCrossReference_2_2_1_0ElementType());
						}
						otherlv_7=RULE_ID
						{
							doneLeaf(otherlv_7);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getExtendsResourceEObject_ExtendsResourceEObjectKeyword_2_3_0ElementType());
				}
				otherlv_8='ExtendsResourceEObject'
				{
					doneLeaf(otherlv_8);
				}
				(
					(
						{
							if (!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
						{
							markLeaf(elementTypeProvider.getExtendsResourceEObject_EObjectReference1ExtendsResourceEObjectCrossReference_2_3_1_0ElementType());
						}
						otherlv_9=RULE_ID
						{
							doneLeaf(otherlv_9);
						}
					)
				)
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getExtendsResourceEObject_ExtendsResourceEObjectKeyword_3_0ElementType());
			}
			otherlv_10='ExtendsResourceEObject'
			{
				doneLeaf(otherlv_10);
			}
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsResourceEObject_EObjectReference2ExtendsNsURIEObjectCrossReference_3_1_0ElementType());
					}
					otherlv_11=RULE_ID
					{
						doneLeaf(otherlv_11);
					}
				)
			)
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsResourceEObject_EObjectReference3ExtendsPluginEObjectCrossReference_3_2_0ElementType());
					}
					otherlv_12=RULE_ID
					{
						doneLeaf(otherlv_12);
					}
				)
			)
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getExtendsResourceEObject_EObjectReference4ExtendsResourceEObjectCrossReference_3_3_0ElementType());
					}
					otherlv_13=RULE_ID
					{
						doneLeaf(otherlv_13);
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsResourceEObject_EObjectContainmentExtendsNsURIEObjectParserRuleCall_3_4_0ElementType());
					}
					lv_eObjectContainment_14_0=ruleExtendsNsURIEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsResourceEObject_EObjectContainmentExtendsPluginEObjectParserRuleCall_3_5_0ElementType());
					}
					lv_eObjectContainment_15_0=ruleExtendsPluginEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsResourceEObject_EObjectContainmentExtendsResourceEObjectParserRuleCall_3_6_0ElementType());
					}
					lv_eObjectContainment_16_0=ruleExtendsResourceEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsResourceEObject_EObjectContainmentEObjectParserRuleCall_3_7_0ElementType());
					}
					lv_eObjectContainment_17_0=ruleEObject
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsResourceEObject_EObjectContainmentEAttributeParserRuleCall_3_8_0ElementType());
					}
					lv_eObjectContainment_18_0=ruleEAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
			(
				(
					{
						markComposite(elementTypeProvider.getExtendsResourceEObject_EObjectContainmentMyEAttributeParserRuleCall_3_9_0ElementType());
					}
					lv_eObjectContainment_19_0=ruleMyEAttribute
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
		)?
	)
;

//Entry rule entryRuleEObject
entryRuleEObject returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getEObjectElementType()); }
	iv_ruleEObject=ruleEObject
	{ $current=$iv_ruleEObject.current; }
	EOF;

// Rule EObject
ruleEObject returns [Boolean current=false]
:
	(
		(
			{
				precedeComposite(elementTypeProvider.getEObject_EObjectAction_0ElementType());
				doneComposite();
				associateWithSemanticElement();
			}
		)
		{
			markLeaf(elementTypeProvider.getEObject_ObjectKeyword_1ElementType());
		}
		otherlv_1='object'
		{
			doneLeaf(otherlv_1);
		}
	)
;

//Entry rule entryRuleValidID
entryRuleValidID returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getValidIDElementType()); }
	iv_ruleValidID=ruleValidID
	{ $current=$iv_ruleValidID.current; }
	EOF;

// Rule ValidID
ruleValidID returns [Boolean current=false]
:
	{
		markLeaf(elementTypeProvider.getValidID_IDTerminalRuleCallElementType());
	}
	this_ID_0=RULE_ID
	{
		doneLeaf(this_ID_0);
	}
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;