//
//  main.swift
//  PackageEtherCaptureDemo
//
//  Created by Darrell Root on 1/27/20.
//  Copyright © 2020 com.darrellroot. All rights reserved.
//

import Foundation
import PackageEtherCapture

let etherCapture: EtherCapture?
do {
    etherCapture = try EtherCapture(interface: "en0", command: "icmp or icmp6") { frame in
        debugPrint(frame.description)
    }
} catch {
    print("EtherCapture initialization failed with error \(error)")
}
RunLoop.current.run()
