// import { PrismaClient } from "@prisma/client";

export async function GET(req) {
  const url = new URL(req.url);
  const params = Object.fromEntries(url.searchParams.entries());
  return new Response(
    JSON.stringify({ status: "ok", message: "API is healthy", data: params }),
    {
      status: 200,
      headers: {
        "Content-Type": "application/json",
      },
    }
  );
}
