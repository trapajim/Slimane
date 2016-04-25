//
//  Router.swift
//  Slimane
//
//  Created by Yuki Takei on 4/16/16.
//
//

extension Slimane {
    public func use(handler: (Request, Response, MiddlewareChain) -> ()){
        let middleware = BasicMiddleware(handler: handler)
        middlewares.append(middleware)
    }
    
    public func use(handler: MiddlewareType){
        middlewares.append(handler)
    }
    
    public func use(handler: AsyncMiddleware){
        // Wrap with basicMiddleware to enable response interceptor
        let middleware = AsyncMiddlewareFactory(handler: handler)
        middlewares.append(middleware)
    }
}

extension Slimane {
    public func get(path: String, handler: AsyncRespond){
        let responder = delegate.get(path, handler: handler)
        get(path, handler: responder)
    }
    
    public func get(path: String, handler: AsyncResponder){
        let route = BasicRouter(method: .get, path: path, handler: handler)
        router.routes.append(route)
    }
}

extension Slimane {
    public func options(path: String, handler: AsyncRespond){
        let responder = delegate.options(path, handler: handler)
        options(path, handler: responder)
    }
    
    public func options(path: String, handler: AsyncResponder){
        let route = BasicRouter(method: .options, path: path, handler: handler)
        router.routes.append(route)
    }
}

extension Slimane {
    public func post(path: String, handler: AsyncRespond){
        let responder = delegate.post(path, handler: handler)
        post(path, handler: responder)
    }
    
    public func post(path: String, handler: AsyncResponder){
        let route = BasicRouter(method: .post, path: path, handler: handler)
        router.routes.append(route)
    }
}

extension Slimane {
    public func put(path: String, handler: AsyncRespond){
        let responder = delegate.put(path, handler: handler)
        put(path, handler: responder)
    }
    
    public func put(path: String, handler: AsyncResponder){
        let route = BasicRouter(method: .put, path: path, handler: handler)
        router.routes.append(route)
    }
}

extension Slimane {
    public func patch(path: String, handler: AsyncRespond){
        let responder = delegate.patch(path, handler: handler)
        patch(path, handler: responder)
    }
    
    public func patch(path: String, handler: AsyncResponder){
        let route = BasicRouter(method: .patch, path: path, handler: handler)
        router.routes.append(route)
    }
}

extension Slimane {
    public func delete(path: String, handler: AsyncRespond){
        let responder = delegate.delete(path, handler: handler)
        delete(path, handler: responder)
    }
    
    public func delete(path: String, handler: AsyncResponder){
        let route = BasicRouter(method: .delete, path: path, handler: handler)
        router.routes.append(route)
    }
}

