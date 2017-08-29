/**
 * The official client library for bcccore-wallet-service.
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

// Expose bcccore
client.Bcccore = require('bcccore-lib');
