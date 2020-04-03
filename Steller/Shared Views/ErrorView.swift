//
//  ErrorView.swift
//  Steller
//
//  Created by Miroslav Kutak on 03/04/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

struct ErrorView: View {
    let error: Error
    let retryAction: () -> Void

    var body: some View {
        VStack {
            Text(Localize("global.error.generic.title"))
                .font(.title)
            Text(error.localizedDescription)
                .font(.callout)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40).padding()
            Button(action: retryAction, label: { Text(Localize("global.button.retry")).bold() })
        }
    }
}

#if DEBUG
struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: NSError(domain: "", code: 0, userInfo: [
            NSLocalizedDescriptionKey: Localize("global.error.generic.description")]),
                  retryAction: { })
    }
}
#endif
