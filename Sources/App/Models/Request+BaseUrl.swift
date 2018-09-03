//
//  Request+BaseUrl.swift
//  App
//
//  Created by Jermaine Kelly on 9/3/18.
//

import Vapor

extension Request {
    var baseUrl: String {
        //var host = http.headers["Host"].first!
        var host = http.headers.firstValue(name: .host)!
        if host.hasSuffix("/") {
            host = String(host.dropLast())
        }
        
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(scheme)://\(host)/todos/"
    }
}
