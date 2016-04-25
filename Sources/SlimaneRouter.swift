public class SlimaneRouter: RouterProtocol{
    public init(){}
    public func get(path: String, handler: AsyncRespond) -> BasicAsyncResponder{
        return BasicAsyncResponder(handler)
    }
}

extension SlimaneRouter {
    public func options(path: String, handler: AsyncRespond) -> BasicAsyncResponder{
        return BasicAsyncResponder(handler)
    }
}

extension SlimaneRouter {
    public func post(path: String, handler: AsyncRespond) -> BasicAsyncResponder{
        return BasicAsyncResponder(handler)
    }
}

extension SlimaneRouter {
    public func put(path: String, handler: AsyncRespond) -> BasicAsyncResponder{
        return BasicAsyncResponder(handler)
    }
}

extension SlimaneRouter {
    public func patch(path: String, handler: AsyncRespond) -> BasicAsyncResponder{
        return BasicAsyncResponder(handler)
    }
}

extension SlimaneRouter {
    public func delete(path: String, handler: AsyncRespond) -> BasicAsyncResponder{
        return BasicAsyncResponder(handler)
    }
}