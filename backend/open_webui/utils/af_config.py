"""
Agentic Fabriq configuration.
Exports AF credentials used by af_sdk.MCPClient.
The SDK handles token exchange and caching internally.
"""
import os

AF_APP_ID = os.getenv("AF_APP_ID", "")
AF_APP_SECRET = os.getenv("AF_APP_SECRET", "")
AF_GATEWAY_URL = os.getenv("AF_GATEWAY_URL", "https://dashboard.agenticfabriq.com")

__all__ = ["AF_APP_ID", "AF_APP_SECRET", "AF_GATEWAY_URL"]
