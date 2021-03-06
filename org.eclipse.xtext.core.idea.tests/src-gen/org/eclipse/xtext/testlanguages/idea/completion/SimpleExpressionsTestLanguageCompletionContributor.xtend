package org.eclipse.xtext.testlanguages.idea.completion

import org.eclipse.xtext.idea.lang.AbstractXtextLanguage;
import org.eclipse.xtext.testlanguages.idea.lang.SimpleExpressionsTestLanguageLanguage;

class SimpleExpressionsTestLanguageCompletionContributor extends AbstractSimpleExpressionsTestLanguageCompletionContributor {
	new() {
		this(SimpleExpressionsTestLanguageLanguage.INSTANCE)
	}
	
	new(AbstractXtextLanguage lang) {
		super(lang)
		//custom rules here
	}
}
