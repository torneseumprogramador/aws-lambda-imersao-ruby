require 'json'

def lambda_handler(event:, context:)
    { 
        statusCode: 200, 
        body: JSON.parse(JSON.generate(event["body"])),
        headers: { 
          "Content-Type": "application/json",
          "Cache-Control": "max-age=3600, public"
        },
    }
end
