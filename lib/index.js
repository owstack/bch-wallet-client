/**
 * The official client library for bch-wallet-service.
 * @module Client
 */

/**
 * Client API.
 * @alias module:Client.API
 */
var client = module.exports = require('./api');

/**
 * Verifier module.
 * @alias module:Client.Verifier
 */
client.Verifier = require('./verifier');
client.Utils = require('./common/utils');
client.sjcl = require('sjcl');

/**
 * PayPro module.
 * @alias module:Client.PayPro
 */
client.PayPro = require('./paypro');

// Expose bch-lib
client.bchLib = require('@owstack/bch-lib');
