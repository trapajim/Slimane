//
//  Router.swift
//  Slimane
//
//  Created by Yuki Takei on 4/16/16.
//
//

public protocol RouterProtocol {
    func get(path: String, handler: AsyncRespond) -> BasicAsyncResponder
    func options(path: String, handler: AsyncRespond) -> BasicAsyncResponder
    func post(path: String, handler: AsyncRespond) -> BasicAsyncResponder
    func put(path: String, handler: AsyncRespond) -> BasicAsyncResponder
    func patch(path: String, handler: AsyncRespond) -> BasicAsyncResponder
    func delete(path: String, handler: AsyncRespond) -> BasicAsyncResponder
}