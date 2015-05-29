/*******************************************************************************
 * Copyright (c) 2015 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package org.eclipse.xtext.idea.shared

import org.eclipse.xtext.builder.standalone.StandaloneBuilderModule
import org.eclipse.xtext.builder.standalone.incremental.JavaSupport

/**
 * @author Jan Koehnlein - Initial contribution and API
 */
class IdeaSharedModule extends StandaloneBuilderModule {
	
	override protected configure() {
		super.configure()
		bind(JavaSupport).to(IdeaJavaSupport)
	}
	
}