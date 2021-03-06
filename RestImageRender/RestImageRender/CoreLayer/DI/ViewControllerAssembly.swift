//
//  ViewControllerAssembly.swift
//  RestImageRender
//
//  Copyright © 2020 Ranjan-iOS. All rights reserved.
//

import Foundation
import Swinject

struct ViewControllerAssembly: Assembly {

	func assemble(container: Container) {
		// register initialization of image list view controller
		container.register(ImageListViewControllerProtocol.self,
						   name: "rir.App.Scene.ImageList.ImageListViewController",
						   factory: { (resolver, viewModel) in
							ImageListViewController(viewModel: viewModel)
		})

		// register initilization of image detail view controller
		container.register(ImageDetailViewControllerProtocol.self,
						   name: "rir.App.Scene.ImageDetail.ImageDetailViewController",
						   factory: { (resolver, viewModel) in
							ImageDetailViewController(viewModel: viewModel)
		})
	}
}
