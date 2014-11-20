package org.eclipse.xtext.idea.syntaxcoloring

import com.google.inject.Inject
import com.google.inject.Provider
import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.tree.IElementType
import org.eclipse.xtext.ide.editor.syntaxcoloring.AbstractAntlrTokenToAttributeIdMapper
import org.eclipse.xtext.idea.parser.TokenTypeProvider

import static org.eclipse.xtext.ide.editor.syntaxcoloring.HighlightingStyles.*
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors

class DefaultSyntaxHighlighter extends SyntaxHighlighterBase {
	
	@Inject
	Provider<Lexer> lexerProvider
	
	@Inject
	extension TokenTypeProvider tokenTypeProvider
	
	@Inject
	extension AbstractAntlrTokenToAttributeIdMapper tokenToAttributeIdMapper
	
	override getHighlightingLexer() {
		lexerProvider.get
	}
	
	override getTokenHighlights(IElementType tokenType) {
		val attribute = tokenType.antlrType.id
		switch attribute {
			case NUMBER_ID:
				pack(DefaultLanguageHighlighterColors.NUMBER)
			case KEYWORD_ID:
				pack(DefaultLanguageHighlighterColors.KEYWORD)
			case STRING_ID:
				pack(DefaultLanguageHighlighterColors.STRING)
			case COMMENT_ID:
    			pack(DefaultLanguageHighlighterColors.BLOCK_COMMENT)
			default:
				pack(HighlighterColors.TEXT)	
		}
	}
	
}