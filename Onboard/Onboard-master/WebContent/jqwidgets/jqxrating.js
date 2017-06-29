/*
jQWidgets v4.5.3 (2017-June)
Copyright (c) 2011-2017 jQWidgets.
License: http://jqwidgets.com/license/
*/
!function(a){a.jqx.jqxWidget("jqxRating","",{}),a.extend(a.jqx._jqxRating.prototype,{defineInstance:function(){var b={count:5,disabled:!1,value:0,height:"auto",width:"auto",precision:1,singleVote:!1,itemHeight:"20",itemWidth:"20",_itemHeight:void 0,_itemWidth:void 0,_images:[],aria:{"aria-valuenow":{name:"value",type:"number"},"aria-disabled":{name:"disabled",type:"boolean"}},_events:["change"],_invalidArgumentExceptions:{invalidPrecision:"The value of the precision property is invalid!",invalidWidth:"Width you've entered is invalid!",invalidHeight:"Height you've entered is invalid!",invalidCount:"You've entered invalid value for the count property!",invalidValue:"You've entered invalid value property!"}};return this===a.jqx._jqxRating.prototype?b:(a.extend(!0,this,b),b)},createInstance:function(b){a.jqx.aria(this),this._createRating()},destroy:function(){this.host.remove()},val:function(a){return 0==arguments.length||"object"==typeof a?this.value:(this.value="string"==typeof a?parseInt(a):a,this.setValue(this.value),this.value)},_createRating:function(){this.host.css("display","none"),this.host.empty(),this._addInput(),this._validateProperties(),this._render(),this._performLayout(),this._removeEventHandlers(),this._addEventHandlers(),this.host.css("display","block"),this.host.addClass(this.toThemeProperty("jqx-widget")),this.disabled&&this.disable()},_addInput:function(){var b=this.host.attr("name");this.input=a("<input type='hidden'/>"),this.host.append(this.input),b&&this.input.attr("name",b),this.input.val(this.value.toString())},_render:function(){for(var b=1;b<=this.count;b++)this._images[b-1]=a('<div style="float:left;width:auto;height:auto; position: relative;"><div style="position:absolute;width:auto;height:auto;visibility:hidden;" class="jqx-rating-hoverWrapper"><div style="width:auto;height:auto;float:left;" class="'+this.toThemeProperty("jqx-rating-image-hover")+'"></div><div style="visibility:hidden;width:auto;height:auto;" class="'+this.toThemeProperty("jqx-rating-image-backward")+'"></div></div><div style="position:absolute;width:auto;height:auto;" class="jqx-rating-voteWrapper"><div style="width:auto;height:auto;float:left;" class="'+this.toThemeProperty("jqx-rating-image-default")+'"></div><div style="width:0;height:auto;float:left;" class="'+this.toThemeProperty("jqx-rating-image-backward")+'"></div></div></div>'),this.host.append(this._images[b-1])},_performLayout:function(){for(var a=1;a<=this.count;a++){var b=this._images[a-1].find(this.toThemeProperty(".jqx-rating-image-backward",!0)),c=this._images[a-1].find(this.toThemeProperty(".jqx-rating-image-default",!0)),d=this._images[a-1].find(this.toThemeProperty(".jqx-rating-image-hover",!0)),e=this._getImageName(c),f=this._getImageName(d),g=this._getImageName(b);c.css("background-image","none"),d.css("background-image","none"),b.css("background-image","none"),this._appendImage(d,f,a-1),this._appendImage(b,g,a-1),this._appendImage(c,e,a-1)}},resize:function(a,b){this.width=a,this.height=b,this._setControlSize(this.width,this.height)},_setControlSize:function(a,b){this.host.css("height",this.height),this.host.css("width",this.width),this.itemHeight&&"auto"!==this.itemHeight?this._itemHeight=parseInt(this.itemHeight):this._itemHeight=b,this.itemWidth&&"auto"!==this.itemWidth?this._itemWidth=parseInt(this.itemWidth):this._itemWidth=a},_appendImage:function(b,c,d){var e=this,f=a('<img style="-moz-user-select:-moz-none;-khtml-user-select: none;-webkit-user-select:none;user-select:none;" class="'+this.toThemeProperty("jqx-rating-image")+'" src="'+c+'" />');b.append(f);try{f.load(function(){e._initialized||(e._setControlSize(a(this).width(),a(this).height()),e._setValue(e.value,".jqx-rating-voteWrapper",".jqx-rating-image-default",".jqx-rating-image-backward"),e._initialized=!0),e._images[d].height(e._itemHeight),a(this).height(e._itemHeight),e._images[d].width(e._itemWidth),a(this).width(e._itemWidth)})}catch(b){f[0].onload=function(){e._initialized||(e._setControlSize(a(this).width(),a(this).height()),e._setValue(e.value,".jqx-rating-voteWrapper",".jqx-rating-image-default",".jqx-rating-image-backward"),e._initialized=!0),e._images[d].height(e._itemHeight),a(this).height(e._itemHeight),e._images[d].width(e._itemWidth),a(this).width(e._itemWidth)}}return f},_validateProperties:function(){try{if(this.precision<.001||this.precision>1)throw this._invalidArgumentExceptions.invalidPrecision;if("auto"!==this.height&&parseInt(this.height)<0)throw this._invalidArgumentExceptions.invalidHeight;if("auto"!==this.width&&parseInt(this.width)<0)throw this._invalidArgumentExceptions.invalidWidth;if(this.count<=0)throw this._invalidArgumentExceptions.invalidCount;if(this.value>this.count||this.value<0)throw this._invalidArgumentExceptions.invalidValue}catch(a){alert(a)}},_getImageIndex:function(a){for(var b=0;a!==this._images[b][0];)b++;return++b},_getRating:function(b,c){var d=this._getImageIndex(b);if(this.precision<1){for(var e=parseInt(c)-parseInt(a(b).position().left),f=this._itemWidth*this.precision,g=0;g<e;)g+=f;g>parseInt(this._itemWidth)-f&&(g=parseInt(this._itemWidth));d-=1-g/a(b).width()}return d},_addEventHandlers:function(){for(var b=this,c=0;c<this.count;c++)a.jqx.mobile.isTouchDevice()||(this.addHandler(this._images[c],"mousemove",function(a){var c=b._getRating(this,a.pageX);b._setValue(c,".jqx-rating-hoverWrapper",".jqx-rating-image-hover",".jqx-rating-image-backward")}),this.addHandler(this._images[c],"mouseenter",function(a){for(var c=b._getImageIndex(this),d=0;d<c;d++)b._images[d].children(".jqx-rating-hoverWrapper").css("z-index","10"),b._images[d].children(".jqx-rating-voteWrapper").css("z-index","1"),b._images[d].children(".jqx-rating-hoverWrapper").css("visibility","visible")}),this.addHandler(this._images[c],"mouseleave",function(a){for(var c=b._getImageIndex(this),d=0;d<c;d++)b._images[d].children(".jqx-rating-voteWrapper").css("z-index","10"),b._images[d].children(".jqx-rating-hoverWrapper").css("z-index","1"),b._images[d].children(".jqx-rating-hoverWrapper").css("visibility","hidden")})),this.addHandler(this._images[c],"click",function(a){var c=b._getRating(this,a.pageX);b._setValue(c,".jqx-rating-voteWrapper",".jqx-rating-image-default",".jqx-rating-image-backward"),b.singleVote&&b.disable(),a.stopPropagation(),b._raiseEvent(0,c)}),this.addHandler(this._images[c],"dragstart",function(a){return!1})},_removeEventHandlers:function(){for(var a=0;a<this.count;a++)this.removeHandler(this._images[a],"mousemove"),this.removeHandler(this._images[a],"mouseenter"),this.removeHandler(this._images[a],"mouseleave"),this.removeHandler(this._images[a],"click"),this.removeHandler(this._images[a],"dragstart")},_getImageName:function(a){var b=a.css("background-image");return b=b.replace('url("',""),b=b.replace('")',""),b=b.replace("url(",""),b=b.replace(")","")},_setValue:function(b,c,d,e){for(var f=1;f<=this.count;f++){var g=1,h=this._images[f-1].children(c),i=h.children(d),j=h.children(e);f>b&&(g=Math.abs(f-b)<1?1-Math.abs(f-b):0),i.width(this._itemWidth*g),j.width(this._itemWidth-parseInt(i.width())),h.children(this.toThemeProperty(e)).children(0).css("margin-left",-this._itemWidth*g+"px")}a.jqx.aria(this,"aria-valuenow",b)},_raiseEvent:function(b,c){var d=new a.Event(this._events[b]);return d.owner=this,d.value=c,d.oldvalue=this.value,this.value=c,this.input&&this.input.val(this.value.toString()),this.host.trigger(d)},setValue:function(a){this._setValue(a,".jqx-rating-voteWrapper",".jqx-rating-image-default",".jqx-rating-image-backward"),this.value=a,this._raiseEvent(0,this.value)},getValue:function(){return this.value},disable:function(){this._removeEventHandlers(),this.disabled=!0,a.jqx.aria(this,"aria-disabled",!0)},enable:function(){this._removeEventHandlers(),this._addEventHandlers(),this.disabled=!1,a.jqx.aria(this,"aria-disabled",!1)},propertyChangedHandler:function(a,b,c,d){if("disabled"===b)return void(d?this.disable():this.enable());"value"===b?a.setValue(d):a._createRating()}})}(jqxBaseFramework);

