/**
 * Charity -  Admin JS
 * This is resposible for back end
 * theme designing &amp; form handlling
 *
 * @version 1.0
 */
jQuery(document).ready(function($) {
    "use strict";

    /**
	 * NB - Multiple Image Widgets
	 * @version 1.1
	 */
    if ($("#widgets-right").length > 0) {

        var nbImagesWidget = {
            addImage : function(thisImg) {
                var $setThis = this;
                window.send_to_editor = function(html) {

                    var regex = /src="(.+?)"/;
                    var rslt = html.match(regex);
                    var $imgurl = (rslt[1]) ? rslt[1] : '';
                    $setThis.setImage(thisImg, $imgurl);
                    tb_remove();
                };
                tb_show('', 'media-upload.php?type=image&amp;TB_iframe=true');
                return false;
            },
            deleteImage : function(thisImg) {
                var thisField = thisImg.parents(".nb-img-wrap").find(".nb-img-field");
                var $imgURL = thisImg.data("url");

                var $imgData = this.getImage(thisImg);
                //get image from hidden field

                var $newImgData = [];
                for (var $i = 0; $i < $imgData.length; $i++) {
                    if ($imgData[$i] == $imgURL)
                        continue;
                    $newImgData.push($imgData[$i]);
                    thisField.val($newImgData);
                    thisImg.parent().remove();
                }
            },
            getImage : function(thisImg) {
                var $imgData = thisImg.parents(".nb-img-wrap").find(".nb-img-field").val();
                return ($imgData) ? $imgData.split(",") : [];
            },
            setImage : function(thisImg, $imgurl) {
                var $imgWrap = thisImg.parents(".nb-img-wrap");
                var $imgTag = ($imgurl.length > 0) ? '<img src="' + $imgurl + '" width="50px"  />' : "";
                var $imgDiv = '<li>' + $imgTag + '<span class="nb-img-delete" data-url="' + $imgurl + '"> X </span></li>';
                $imgWrap.find(".nb-img-list").append($imgDiv);

                var $imgData = this.getImage(thisImg);
                //get image from hidden field

                $imgData.push($imgurl);
                $imgWrap.find(".nb-img-field").val($imgData);
            }
        }

        $(document).on("click", ".nbimgwd-upload", function() {
            nbImagesWidget.addImage($(this));
        });

        $(document).on("click", ".nb-img-delete", function() {
            nbImagesWidget.deleteImage($(this));
        });
    }

    if ($("#chyUserImageButton").length > 0) {
        var chyUserProfileImage = {
            addImage : function(thisImg) {
                var $setThis = this;
                //alert("Hello");
                var $imgurl = "";
                window.send_to_editor = function(html) {
                    $imgurl = $(html).find("img").attr("src");

                    /*var regex = /src="(.+?)"/;
					 var rslt = html.match(regex);
					 var $imgurl = (rslt[1]) ? rslt[1] : '';*/
                    $setThis.setImage(thisImg, $imgurl);
                    tb_remove();
                };
                tb_show('', 'media-upload.php?type=image&amp;TB_iframe=true');
                return false;
            },
            deleteImage : function(thisImg) {

                $("#image-priview img").attr("src", $("#image-priview img").data("place"));
                $("#chy-image").val("");
            },
            setImage : function(thisImg, $imgurl) {
                $("#image-priview img").attr("src", $imgurl);
                $("#chy-image").val($imgurl);
            }
        }

        $(document).on("click", "#chyUserImageButton", function() {
            chyUserProfileImage.addImage($(this));

        });

        $(document).on("click", "#chyUserImageDeleteButton", function() {
            chyUserProfileImage.deleteImage($(this));
        });

    }

    if ($("#home_layout").length > 0) {

        var elems = $("#home_layout img.image-item");
        for (var i = 0; i < elems.length; i++) {
            var $imgTitle = $(elems[i]).attr("original-title");
            $(elems[i]).before("<span>" + $imgTitle + "</span>"); 
        }
    }
    /**
     * MetaBox Hide/Show
     * @version charity 1.0
     */
        var charityMetaBox={
        hideVar: '#contact_page_metabox, #our_story_metabox, #our_story_text_metabox, #homeslider_metabox, #helpicon_metabox, #volunteer_metabox, #usericon_metabox, #mymetabox_revslider_0, #shoplanding_metabox',
        showVar:null,
        init: function(){
            this.showVar=[{
                'default' : '#breadcrumb_metabox, #charity-sub-page_metabox',
                'charity-contact-us.php' : '#contact_page_metabox',
                'charity-our-story.php' : '#our_story_metabox, #our_story_text_metabox',
                'charity-volunteer.php' : '#volunteer_metabox',
                'charity-home-one.php' : '#homeslider_metabox, #helpicon_metabox, #mymetabox_revslider_0',
                'charity-home-two.php' : '#homeslider_metabox, #helpicon_metabox, #mymetabox_revslider_0',
                'charity-home-three.php' : '#homeslider_metabox, #helpicon_metabox, #mymetabox_revslider_0',
                'charity-shop-landing.php' : '#shoplanding_metabox',
                'charity-home-four.php' : '#homeslider_metabox, #helpicon_metabox, #mymetabox_revslider_0',
                'charity-home-five.php' : '#homeslider_metabox, #helpicon_metabox, #mymetabox_revslider_0'
            }];

            this.event();
        },
        
        event: function (){
            var $this=this;
            this.hide(); //first hide all
            
            //selected
            var $onSelected=$('#page_template').val();
            this.show($onSelected);
            
            //change
             $('#page_template').on('change', function() {
                 var $getPage=$(this).val();
                 $this.show($getPage);
            });
        },
        
        hide: function(){
            $(this.hideVar).hide();
        },
        show: function($page){
            this.hide(); //reset
            if(this.showVar[0][$page]){
                $(this.showVar[0][$page]).show();
            }
        }
    };
    
    if($(".wp-admin #wpbody .metabox-holder").length> 0){
        charityMetaBox.init();
    }

    var CharityHomeLayout={
        init: function(){
            
           var self=this;
           this.home(self.isHide());
           
           $("#single_causes_mode .input label").click( function(){
               var checked=$("#single_causes_mode .input label .vp-input").hasClass("checked");
               var flag=(checked)? false : true;
               self.home(flag);
           });
        },
        home: function ($flag){
            //alert($flag);
            if($flag){
                $("#home_layout_settings").addClass("vp-dep-inactive vp-hide");
            }
            else{
                $("#home_layout_settings").removeClass("vp-dep-inactive vp-hide");
            }
        },
        
        isHide: function(){
           return $("#single_causes_mode .input label .vp-input").hasClass("checked");
        }
    };

    if($("form#vp-option-form").length>0){
        CharityHomeLayout.init();
    }

});
