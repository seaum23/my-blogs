# Lets talk about compose scripts

Composer lets us execute code after some events fired by composer. This can be helpful if you want to run command after a composer event if fired.
For example when a project is created first laravel copies the .env.example as .env
Codes may be console command or any php callbacks. PHP callbacks need to follow ps4 standard for composer to be able to discover

Below is a example of compose json with a script

```json
{
    "require": {
        "dompdf/dompdf": "^2.0"
    },
    "scripts": {
        "post-autoload-dump": [
            "sudo chown root test.txt"
        ]
    }
}
```

This changes the owner of the text.txt file to root. As we are using sudo, composer will ask for sudo pass.