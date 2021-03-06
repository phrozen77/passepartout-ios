//
//  Theme+Titles.swift
//  Passepartout-iOS
//
//  Created by Davide De Rosa on 7/16/18.
//  Copyright (c) 2019 Davide De Rosa. All rights reserved.
//
//  https://github.com/passepartoutvpn
//
//  This file is part of Passepartout.
//
//  Passepartout is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Passepartout is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Passepartout.  If not, see <http://www.gnu.org/licenses/>.
//

import UIKit

extension UIViewController {
    func applyMasterTitle(_ theme: Theme) {
        navigationItem.largeTitleDisplayMode = theme.masterTitleDisplayMode
    }
    
    func applyDetailTitle(_ theme: Theme) {
        navigationItem.largeTitleDisplayMode = theme.detailTitleDisplayMode
    }
}

extension TableModel {
    func headerHeight(for section: Int) -> CGFloat {
        guard let title = header(for: section) else {
            return 1.0
        }
        guard !title.isEmpty else {
            return 0.0
        }
        return UITableView.automaticDimension
    }

    func footerHeight(for section: Int) -> CGFloat {
        guard let title = footer(for: section) else {
            return 1.0
        }
        guard !title.isEmpty else {
            return 0.0
        }
        return UITableView.automaticDimension
    }
}
