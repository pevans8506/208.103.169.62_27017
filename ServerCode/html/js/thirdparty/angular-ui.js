/**
 * AngularUI - The companion suite for AngularJS
 * @version v0.4.0 - 2013-04-07
 * @link http://angular-ui.github.com
 * @license MIT License, http://www.opensource.org/licenses/MIT
 */
angular.module("ui.config",[]).value("ui.config",{}),angular.module("ui.filters",["ui.config"]),angular.module("ui.directives",["ui.config"]),angular.module("ui",["ui.filters","ui.directives","ui.config"]),angular.module("ui.directives").factory("keypressHelper",["$parse",function(t){var n={8:"backspace",9:"tab",13:"enter",27:"esc",32:"space",33:"pageup",34:"pagedown",35:"end",36:"home",37:"left",38:"up",39:"right",40:"down",45:"insert",46:"delete"},r=function(e){return e.charAt(0).toUpperCase()+e.slice(1)};return function(e,i,s,o){var u,a=[];u=i.$eval(o["ui"+r(e)]),angular.forEach(u,function(e,n){var r,i;i=t(e),angular.forEach(n.split(" "),function(e){r={expression:i,keys:{}},angular.forEach(e.split("-"),function(e){r.keys[e]=!0}),a.push(r)})}),s.bind(e,function(t){var r=!!t.metaKey||!!t.altKey,s=!!t.ctrlKey,o=!!t.shiftKey,u=t.keyCode;e==="keypress"&&!o&&u>=97&&u<=122&&(u-=32),angular.forEach(a,function(e){var u=e.keys[n[t.keyCode]]||e.keys[t.keyCode.toString()],a=!!e.keys.alt,f=!!e.keys.ctrl,l=!!e.keys.shift;u&&a==r&&f==s&&l==o&&i.$apply(function(){e.expression(i,{$event:t})})})})}}]),angular.module("ui.directives").directive("uiKeydown",["keypressHelper",function(e){return{link:function(t,n,r){e("keydown",t,n,r)}}}]),angular.module("ui.directives").directive("uiKeypress",["keypressHelper",function(e){return{link:function(t,n,r){e("keypress",t,n,r)}}}]),angular.module("ui.directives").directive("uiKeyup",["keypressHelper",function(e){return{link:function(t,n,r){e("keyup",t,n,r)}}}]);