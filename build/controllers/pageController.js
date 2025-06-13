"use strict";

var _pageService = _interopRequireDefault(require("../services/pageService"));
function _interopRequireDefault(e) { return e && e.__esModule ? e : { "default": e }; }
function _regenerator() { /*! regenerator-runtime -- Copyright (c) 2014-present, Facebook, Inc. -- license (MIT): https://github.com/babel/babel/blob/main/packages/babel-helpers/LICENSE */ var e, t, r = "function" == typeof Symbol ? Symbol : {}, n = r.iterator || "@@iterator", o = r.toStringTag || "@@toStringTag"; function i(r, n, o, i) { var c = n && n.prototype instanceof Generator ? n : Generator, u = Object.create(c.prototype); return _regeneratorDefine2(u, "_invoke", function (r, n, o) { var i, c, u, f = 0, p = o || [], y = !1, G = { p: 0, n: 0, v: e, a: d, f: d.bind(e, 4), d: function d(t, r) { return i = t, c = 0, u = e, G.n = r, a; } }; function d(r, n) { for (c = r, u = n, t = 0; !y && f && !o && t < p.length; t++) { var o, i = p[t], d = G.p, l = i[2]; r > 3 ? (o = l === n) && (u = i[(c = i[4]) ? 5 : (c = 3, 3)], i[4] = i[5] = e) : i[0] <= d && ((o = r < 2 && d < i[1]) ? (c = 0, G.v = n, G.n = i[1]) : d < l && (o = r < 3 || i[0] > n || n > l) && (i[4] = r, i[5] = n, G.n = l, c = 0)); } if (o || r > 1) return a; throw y = !0, n; } return function (o, p, l) { if (f > 1) throw TypeError("Generator is already running"); for (y && 1 === p && d(p, l), c = p, u = l; (t = c < 2 ? e : u) || !y;) { i || (c ? c < 3 ? (c > 1 && (G.n = -1), d(c, u)) : G.n = u : G.v = u); try { if (f = 2, i) { if (c || (o = "next"), t = i[o]) { if (!(t = t.call(i, u))) throw TypeError("iterator result is not an object"); if (!t.done) return t; u = t.value, c < 2 && (c = 0); } else 1 === c && (t = i["return"]) && t.call(i), c < 2 && (u = TypeError("The iterator does not provide a '" + o + "' method"), c = 1); i = e; } else if ((t = (y = G.n < 0) ? u : r.call(n, G)) !== a) break; } catch (t) { i = e, c = 1, u = t; } finally { f = 1; } } return { value: t, done: y }; }; }(r, o, i), !0), u; } var a = {}; function Generator() {} function GeneratorFunction() {} function GeneratorFunctionPrototype() {} t = Object.getPrototypeOf; var c = [][n] ? t(t([][n]())) : (_regeneratorDefine2(t = {}, n, function () { return this; }), t), u = GeneratorFunctionPrototype.prototype = Generator.prototype = Object.create(c); function f(e) { return Object.setPrototypeOf ? Object.setPrototypeOf(e, GeneratorFunctionPrototype) : (e.__proto__ = GeneratorFunctionPrototype, _regeneratorDefine2(e, o, "GeneratorFunction")), e.prototype = Object.create(u), e; } return GeneratorFunction.prototype = GeneratorFunctionPrototype, _regeneratorDefine2(u, "constructor", GeneratorFunctionPrototype), _regeneratorDefine2(GeneratorFunctionPrototype, "constructor", GeneratorFunction), GeneratorFunction.displayName = "GeneratorFunction", _regeneratorDefine2(GeneratorFunctionPrototype, o, "GeneratorFunction"), _regeneratorDefine2(u), _regeneratorDefine2(u, o, "Generator"), _regeneratorDefine2(u, n, function () { return this; }), _regeneratorDefine2(u, "toString", function () { return "[object Generator]"; }), (_regenerator = function _regenerator() { return { w: i, m: f }; })(); }
function _regeneratorDefine2(e, r, n, t) { var i = Object.defineProperty; try { i({}, "", {}); } catch (e) { i = 0; } _regeneratorDefine2 = function _regeneratorDefine(e, r, n, t) { if (r) i ? i(e, r, { value: n, enumerable: !t, configurable: !t, writable: !t }) : e[r] = n;else { var o = function o(r, n) { _regeneratorDefine2(e, r, function (e) { return this._invoke(r, n, e); }); }; o("next", 0), o("throw", 1), o("return", 2); } }, _regeneratorDefine2(e, r, n, t); }
function asyncGeneratorStep(n, t, e, r, o, a, c) { try { var i = n[a](c), u = i.value; } catch (n) { return void e(n); } i.done ? t(u) : Promise.resolve(u).then(r, o); }
function _asyncToGenerator(n) { return function () { var t = this, e = arguments; return new Promise(function (r, o) { var a = n.apply(t, e); function _next(n) { asyncGeneratorStep(a, r, o, _next, _throw, "next", n); } function _throw(n) { asyncGeneratorStep(a, r, o, _next, _throw, "throw", n); } _next(void 0); }); }; }
var getInforPageHome = /*#__PURE__*/function () {
  var _ref = _asyncToGenerator(/*#__PURE__*/_regenerator().m(function _callee(req, res) {
    var limit, response, _t;
    return _regenerator().w(function (_context) {
      while (1) switch (_context.n) {
        case 0:
          limit = req.query.limit;
          if (!limit) limit = 10;
          _context.p = 1;
          _context.n = 2;
          return _pageService["default"].getInforPageHome(+limit);
        case 2:
          response = _context.v;
          return _context.a(2, res.status(200).json(response));
        case 3:
          _context.p = 3;
          _t = _context.v;
          console.log(_t);
          return _context.a(2, res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from server...'
          }));
      }
    }, _callee, null, [[1, 3]]);
  }));
  return function getInforPageHome(_x, _x2) {
    return _ref.apply(this, arguments);
  };
}();
var getAllpages = /*#__PURE__*/function () {
  var _ref2 = _asyncToGenerator(/*#__PURE__*/_regenerator().m(function _callee2(req, res) {
    var pages, _t2;
    return _regenerator().w(function (_context2) {
      while (1) switch (_context2.n) {
        case 0:
          _context2.p = 0;
          _context2.n = 1;
          return _pageService["default"].getAllpages();
        case 1:
          pages = _context2.v;
          return _context2.a(2, res.status(200).json(pages));
        case 2:
          _context2.p = 2;
          _t2 = _context2.v;
          console.log(_t2);
          return _context2.a(2, res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from the server'
          }));
      }
    }, _callee2, null, [[0, 2]]);
  }));
  return function getAllpages(_x3, _x4) {
    return _ref2.apply(this, arguments);
  };
}();
var getAllLocation = /*#__PURE__*/function () {
  var _ref3 = _asyncToGenerator(/*#__PURE__*/_regenerator().m(function _callee3(req, res) {
    var pageId, pages, _t3;
    return _regenerator().w(function (_context3) {
      while (1) switch (_context3.n) {
        case 0:
          _context3.p = 0;
          pageId = req.query.pageId || req.params.pageId; // console.log(' Received pageId:', pageId);
          if (pageId) {
            _context3.n = 1;
            break;
          }
          return _context3.a(2, res.status(400).json({
            errcode: 1,
            errMessage: 'Missing pageId parameter'
          }));
        case 1:
          _context3.n = 2;
          return _pageService["default"].getAllLocation(pageId);
        case 2:
          pages = _context3.v;
          return _context3.a(2, res.status(200).json(pages));
        case 3:
          _context3.p = 3;
          _t3 = _context3.v;
          console.log(_t3);
          return _context3.a(2, res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from the server'
          }));
      }
    }, _callee3, null, [[0, 3]]);
  }));
  return function getAllLocation(_x5, _x6) {
    return _ref3.apply(this, arguments);
  };
}();
var postPage = /*#__PURE__*/function () {
  var _ref4 = _asyncToGenerator(/*#__PURE__*/_regenerator().m(function _callee4(req, res) {
    var response, _t4;
    return _regenerator().w(function (_context4) {
      while (1) switch (_context4.n) {
        case 0:
          _context4.p = 0;
          _context4.n = 1;
          return _pageService["default"].saveInforPage(req.body);
        case 1:
          response = _context4.v;
          return _context4.a(2, res.status(200).json(response));
        case 2:
          _context4.p = 2;
          _t4 = _context4.v;
          console.log(_t4);
          return _context4.a(2, res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from the server'
          }));
      }
    }, _callee4, null, [[0, 2]]);
  }));
  return function postPage(_x7, _x8) {
    return _ref4.apply(this, arguments);
  };
}();
var getInforPageById = /*#__PURE__*/function () {
  var _ref5 = _asyncToGenerator(/*#__PURE__*/_regenerator().m(function _callee5(req, res) {
    var infor, _t5;
    return _regenerator().w(function (_context5) {
      while (1) switch (_context5.n) {
        case 0:
          _context5.p = 0;
          _context5.n = 1;
          return _pageService["default"].getInforPageById(req.query.location_id);
        case 1:
          infor = _context5.v;
          return _context5.a(2, res.status(200).json(infor));
        case 2:
          _context5.p = 2;
          _t5 = _context5.v;
          console.log(_t5);
          return _context5.a(2, res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from the server'
          }));
      }
    }, _callee5, null, [[0, 2]]);
  }));
  return function getInforPageById(_x9, _x0) {
    return _ref5.apply(this, arguments);
  };
}();
module.exports = {
  getInforPageHome: getInforPageHome,
  getAllpages: getAllpages,
  postPage: postPage,
  getAllLocation: getAllLocation,
  getInforPageById: getInforPageById
};