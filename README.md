## Thawani Payment Gateway Plugin for PHPNuxBill

This plugin integrates the Thawani payment gateway with PHPNuxBill, a billing system for Mikrotik. It allows you to accept payments via Thawani directly from your PHPNuxBill instance.

## Features

- Easy configuration of Thawani payment gateway settings.
- Automatic redirection to the Thawani payment page.
- Automatic handling of payment status updates and notifications.
- Seamless integration with PHPNuxBill's order and package management.

## Installation
- Copy `thawani.php` to the `system/paymentgateway/` directory of your PHPNuxBill installation.
- Copy `ui/thawani.tpl` to the `system/paymentgateway/ui/` directory.
- 
## Configuration

1. **Access the Configuration Page**

   Go to the PHPNuxBill admin panel and navigate to `Payment Gateways > Thawani`.

2. **Enter Your Thawani API Keys**

   Enter your Thawani Publishable Key and Secret Key. These keys can be obtained from your [Thawani account](https://merchant.thawani.om/).

3. **Save the Configuration**

   Save the configuration settings.

## Usage

1. **Create a Transaction**

   When a user places an order, a transaction will be created and the user will be redirected to the Thawani payment page and it will be redirected to phpnuxbill after payment is successful or failed or even canceled.

2. **Payment Notification**

   Thawani will send payment status notifications to the plugin, which will automatically update the transaction status in PHPNuxBill.
