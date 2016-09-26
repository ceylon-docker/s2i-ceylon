import ceylon.io { SocketAddress }
import ceylon.net { ... }
import ceylon.net.http.server { ... }

shared void run() {
    value server = newServer {
        Endpoint {
            startsWith("/");
            (request, response) 
                    => response.writeString("Hello World");
        }
	};
	server.start(SocketAddress("0.0.0.0",8080));
}

