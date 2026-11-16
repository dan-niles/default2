import ballerina/mcp.v2 as mcpv2;

listener mcpv2:StreamableHttpListener mcpListener = new (8080);

@mcpv2:StreamableHttpServiceConfig {info: {name: "MCP Service", version: "1.0.0"}, protocolMode: "auto"}
service mcpv2:StreamableHttpService /mcp on mcpListener {
    remote function newTool() returns () {
    }

}
