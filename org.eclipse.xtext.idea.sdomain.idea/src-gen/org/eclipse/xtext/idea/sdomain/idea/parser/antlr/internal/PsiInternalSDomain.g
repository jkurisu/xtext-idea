/*******************************************************************************
 * Copyright (c) 2015 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
grammar PsiInternalSDomain;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.idea.sdomain.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.idea.sdomain.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.idea.sdomain.idea.lang.SDomainElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.idea.sdomain.services.SDomainGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected SDomainGrammarAccess grammarAccess;

	protected SDomainElementTypeProvider elementTypeProvider;

	public PsiInternalSDomainParser(PsiBuilder builder, TokenStream input, SDomainElementTypeProvider elementTypeProvider, SDomainGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
		this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "File";
	}

}

//Entry rule entryRuleFile
entryRuleFile returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getFileElementType()); }
	iv_ruleFile=ruleFile
	{ $current=$iv_ruleFile.current; }
	EOF;

// Rule File
ruleFile returns [Boolean current=false]
:
	(
		(
			{
				markComposite(elementTypeProvider.getFile_ElementsElementParserRuleCall_0ElementType());
			}
			lv_elements_0_0=ruleElement
			{
				doneComposite();
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
		)
	)*
;

//Entry rule entryRuleImport
entryRuleImport returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getImportElementType()); }
	iv_ruleImport=ruleImport
	{ $current=$iv_ruleImport.current; }
	EOF;

// Rule Import
ruleImport returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getImport_ImportKeyword_0ElementType());
		}
		otherlv_0='import'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getImport_ImportedNamespaceQualifiedNameWithWildCardParserRuleCall_1_0ElementType());
				}
				lv_importedNamespace_1_0=ruleQualifiedNameWithWildCard
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

//Entry rule entryRuleQualifiedNameWithWildCard
entryRuleQualifiedNameWithWildCard returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getQualifiedNameWithWildCardElementType()); }
	iv_ruleQualifiedNameWithWildCard=ruleQualifiedNameWithWildCard
	{ $current=$iv_ruleQualifiedNameWithWildCard.current; }
	EOF;

// Rule QualifiedNameWithWildCard
ruleQualifiedNameWithWildCard returns [Boolean current=false]
:
	(
		{
			markComposite(elementTypeProvider.getQualifiedNameWithWildCard_QualifiedNameParserRuleCall_0ElementType());
		}
		ruleQualifiedName
		{
			doneComposite();
		}
		(
			{
				markLeaf(elementTypeProvider.getQualifiedNameWithWildCard_FullStopAsteriskKeyword_1ElementType());
			}
			kw='.*'
			{
				doneLeaf(kw);
			}
		)?
	)
;

//Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getQualifiedNameElementType()); }
	iv_ruleQualifiedName=ruleQualifiedName
	{ $current=$iv_ruleQualifiedName.current; }
	EOF;

// Rule QualifiedName
ruleQualifiedName returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getQualifiedName_IDTerminalRuleCall_0ElementType());
		}
		this_ID_0=RULE_ID
		{
			doneLeaf(this_ID_0);
		}
		(
			{
				markLeaf(elementTypeProvider.getQualifiedName_FullStopKeyword_1_0ElementType());
			}
			kw='.'
			{
				doneLeaf(kw);
			}
			{
				markLeaf(elementTypeProvider.getQualifiedName_IDTerminalRuleCall_1_1ElementType());
			}
			this_ID_2=RULE_ID
			{
				doneLeaf(this_ID_2);
			}
		)*
	)
;

//Entry rule entryRuleNamespace
entryRuleNamespace returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getNamespaceElementType()); }
	iv_ruleNamespace=ruleNamespace
	{ $current=$iv_ruleNamespace.current; }
	EOF;

// Rule Namespace
ruleNamespace returns [Boolean current=false]
:
	(
		(
			(
				{
					markComposite(elementTypeProvider.getNamespace_NameQualifiedNameParserRuleCall_0_0ElementType());
				}
				lv_name_0_0=ruleQualifiedName
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getNamespace_LeftCurlyBracketKeyword_1ElementType());
		}
		otherlv_1='{'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getNamespace_ElementsElementParserRuleCall_2_0ElementType());
				}
				lv_elements_2_0=ruleElement
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)*
		{
			markLeaf(elementTypeProvider.getNamespace_RightCurlyBracketKeyword_3ElementType());
		}
		otherlv_3='}'
		{
			doneLeaf(otherlv_3);
		}
	)
;

//Entry rule entryRuleElement
entryRuleElement returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getElementElementType()); }
	iv_ruleElement=ruleElement
	{ $current=$iv_ruleElement.current; }
	EOF;

// Rule Element
ruleElement returns [Boolean current=false]
:
	(
		{
			markComposite(elementTypeProvider.getElement_NamespaceParserRuleCall_0ElementType());
		}
		this_Namespace_0=ruleNamespace
		{
			$current = $this_Namespace_0.current;
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getElement_TypeParserRuleCall_1ElementType());
		}
		this_Type_1=ruleType
		{
			$current = $this_Type_1.current;
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getElement_ImportParserRuleCall_2ElementType());
		}
		this_Import_2=ruleImport
		{
			$current = $this_Import_2.current;
			doneComposite();
		}
	)
;

//Entry rule entryRuleType
entryRuleType returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getTypeElementType()); }
	iv_ruleType=ruleType
	{ $current=$iv_ruleType.current; }
	EOF;

// Rule Type
ruleType returns [Boolean current=false]
:
	(
		{
			markComposite(elementTypeProvider.getType_EntityParserRuleCall_0ElementType());
		}
		this_Entity_0=ruleEntity
		{
			$current = $this_Entity_0.current;
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getType_DatatypeParserRuleCall_1ElementType());
		}
		this_Datatype_1=ruleDatatype
		{
			$current = $this_Datatype_1.current;
			doneComposite();
		}
	)
;

//Entry rule entryRuleEntity
entryRuleEntity returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getEntityElementType()); }
	iv_ruleEntity=ruleEntity
	{ $current=$iv_ruleEntity.current; }
	EOF;

// Rule Entity
ruleEntity returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getEntity_EntityKeyword_0ElementType());
		}
		otherlv_0='entity'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getEntity_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getEntity_LeftCurlyBracketKeyword_2ElementType());
		}
		otherlv_2='{'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getEntity_PropertiesPropertyParserRuleCall_3_0ElementType());
				}
				lv_properties_3_0=ruleProperty
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)*
		{
			markLeaf(elementTypeProvider.getEntity_RightCurlyBracketKeyword_4ElementType());
		}
		otherlv_4='}'
		{
			doneLeaf(otherlv_4);
		}
	)
;

//Entry rule entryRuleDatatype
entryRuleDatatype returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getDatatypeElementType()); }
	iv_ruleDatatype=ruleDatatype
	{ $current=$iv_ruleDatatype.current; }
	EOF;

// Rule Datatype
ruleDatatype returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getDatatype_DatatypeKeyword_0ElementType());
		}
		otherlv_0='datatype'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getDatatype_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
	)
;

//Entry rule entryRuleProperty
entryRuleProperty returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getPropertyElementType()); }
	iv_ruleProperty=ruleProperty
	{ $current=$iv_ruleProperty.current; }
	EOF;

// Rule Property
ruleProperty returns [Boolean current=false]
:
	(
		(
			(
				{
					if (!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					markComposite(elementTypeProvider.getProperty_TypeTypeCrossReference_0_0ElementType());
				}
				ruleQualifiedName
				{
					doneComposite();
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getProperty_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
