<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Helpdezk | Parracho</title>

    <!-- Mainly scripts -->
    {head_item type="js" src="$path/includes/js/" files="$jquery_version"}
    {head_item type="css" src="$path/includes/bootstrap/css/" files="bootstrap.min.css"}
    {head_item type="js"  src="$path/includes/bootstrap/js/" files="bootstrap.min.js"}
    <!-- jqGrid -->
    {*
    {head_item type="js"  src="$path/includes/js/plugins/jqGrid/i18n/" files="grid.locale-pt-br.js"}
    {head_item type="js"  src="$path/includes/js/plugins/jqGrid/" files="jquery.jqGrid.min.js"}
    {head_item type="css" src="$path/css/plugins/jqGrid/" files="ui.jqgrid.css"}
    *}
    <!-- Custom and plugin javascript -->
    <!-- {head_item type="js"  src="$path/includes/js/" files="inspinia.js"} -->
    {head_item type="js"  src="$path/includes/js/plugins/pace/" files="pace.min.js"}

    {head_item type="css" src="$path/css/gn-menu/css/" files="component.css"}
    {head_item type="js"  src="$path/includes/js/plugins/gnmenu/" files="classie.js"}
    {head_item type="js"  src="$path/includes/js/plugins/gnmenu/" files="gnmenu.js"}

    {head_item type="js"  src="$path/includes/js/plugins/modernizr/" files="modernizr.custom.js"}
    <!-- Jquery UI -->
    {*
     *
     Incompatible with the "sumernote". If it is being used the title of the buttons do not work
     *
    {head_item type="js"  src="$path/includes/js/plugins/jquery-ui/" files="jquery-ui.min.js"}
    {head_item type="css" src="$path/css/plugins/jQueryUI/" files="jquery-ui-1.10.4.custom.min.css"}
    *}
    <!-- Helpdezk -->
    {head_item type="js" src="$path/includes/js/" files="default.js"}
    {head_item type="js" src="$path/includes/js/" files="flex_lang.js"}
    {head_item type="js" src="$path/app/modules/helpdezk/views/js/" files="newticket-operator.js"}
    <!-- Font Awesome -->
    {head_item type="css" src="$path/css/font-awesome/css/" files="font-awesome.css"}
    <!-- animate -->
    {head_item type="css" src="$path/css/" files="animate.css"}
    <!-- Helpdezk CSS -->
    {head_item type="css" src="$path/css/" files="$theme.css"}
    <!-- Summernote Editor -->
    {head_item type="css" src="$path/css/plugins/summernote/$summernote_version/" files="summernote.css"}
    {head_item type="css" src="$path/css/plugins/summernote/" files="summernote-bs3.css"}
    {head_item type="js"  src="$path/includes/js/plugins/summernote/$summernote_version/" files="summernote.js"}
    <!-- Icheck, used in checkbox and radio -->
    {head_item type="css" src="$path/css/plugins/iCheck/" files="custom.css"}
    {head_item type="js"  src="$path/includes/js/plugins/iCheck/" files="icheck.min.js"}
    <!-- Bootstrap3 Dialog  -->
    {head_item type="css" src="$path/includes/js/plugins/bootstrap3-dialog/src/css/" files="bootstrap-dialog.css"}
    {head_item type="js"  src="$path/includes/js/plugins/bootstrap3-dialog/src/js/" files="bootstrap-dialog.js"}
    <!-- Dropzone  -->
    {head_item type="js"  src="$path/includes/js/plugins/dropzone/" files="dropzone.js"}
    {head_item type="css" src="$path/css/plugins/dropzone/" files="basic.css"}
    {head_item type="css" src="$path/css/plugins/dropzone/" files="pipe.dropzone.css"}
    <!-- Jquery Validate -->
    {head_item type="js"  src="$path/includes/js/plugins/validate/" files="jquery.validate.min.js"}
   {* <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>*}
    <!-- Combo Autocomplete -->
    {head_item type="js" src="$path/includes/js/plugins/chosen/" files="chosen.jquery.js"}
    {head_item type="css" src="$path/css/plugins/chosen/" files="chosen.css"}
    <!-- Datapicker  -->
    {head_item type="css" src="$path/css/plugins/datepicker/" files="datepicker3.css"}
    {head_item type="js"  src="$path/includes/js/plugins/datepicker/" files="bootstrap-datepicker.js"}
    {head_item type="js"  src="$path/includes/js/plugins/datepicker/locales/" files="bootstrap-datepicker.pt-BR.min.js"}
    <!-- Moment -->
    {head_item type="js"  src="$path/includes/js/plugins/moment/" files="moment-with-locales.min.js"}
    <!-- Stopwatch - Count timer  -->
    {head_item type="js"  src="$path/includes/js/plugins/countimer/" files="countimer.js"}
    <!-- Clockpicker  -->
    {head_item type="css" src="$path/css/plugins/clockpicker/" files="clockpicker.css"}
    {head_item type="js"  src="$path/includes/js/plugins/clockpicker/" files="clockpicker.js"}
    {literal}
    <script type="text/javascript">
         var     default_lang = "{/literal}{$lang}{literal}",
                 path = "{/literal}{$path}{literal}",
                 langName = '{/literal}{$smarty.config.Name}{literal}',
                 theme = '{/literal}{$theme}{literal}',
                 mascDateTime = '{/literal}{$mascdatetime}{literal}',
                 timesession = '{/literal}{$timesession}{literal}',
                 noteAttMaxFiles = '{/literal}{$noteattmaxfiles}{literal}',
                 noteAcceptedFiles = '{/literal}{$noteacceptedfiles}{literal}',
                 ticketAttMaxFiles = '{/literal}{$ticketattmaxfiles}{literal}',
                 ticketAcceptedFiles = '{/literal}{$ticketacceptedfiles}{literal}';


    </script>

    <style>
        /* Additional style to fix warning dialog position */
        #alertmod_table_list_tickets {
            top: 900px !important;
        }

        hr {
            height: 1px;
            margin-left: 15px;
            margin-bottom:-5px;
        }
        .hr-warning{
            background-image: -webkit-linear-gradient(left, rgba(210,105,30,.8), rgba(210,105,30,.6), rgba(0,0,0,0));
        }
        .hr-success{
            background-image: -webkit-linear-gradient(left, rgba(15,157,88,.8), rgba(15, 157, 88,.6), rgba(0,0,0,0));
        }
        .hr-primary{
            background-image: -webkit-linear-gradient(left, rgba(66,133,244,.8), rgba(66, 133, 244,.6), rgba(0,0,0,0));
        }
        .hr-danger{
            background-image: -webkit-linear-gradient(left, rgba(244,67,54,.8), rgba(244,67,54,.6), rgba(0,0,0,0));
        }

        .breadcrumb {
            background: rgba(245, 245, 245, 0);
            border: 0px solid rgba(245, 245, 245, 1);
            border-radius: 25px;
            display: block;
        }

        /*
         * Adjust Bootstrap Tooltip Width
         * https://stackoverflow.com/questions/36263249/adjust-bootstrap-tooltip-width
         */
        .tooltip-inner {
            max-width: 100% !important;
        }

    </style>

    {/literal}
</head>

<body class="top-navigation">

    <div id="wrapper">

    <div id="page-wrapper" class="gray-bg">

        <div class="row border-bottom white-bg">
            {include file=$navBar}
        </div>

        <div class="row border-bottom"> </div>



        <div class="wrapper wrapper-content  ">
            <div class="row wrapper white-bg ibox-title">
                <div class="col-sm-4">
                    <h3>{$smarty.config.New_request}</h3>
                </div>
                <div class="col-sm-8 text-right">
                    &nbsp;
                </div>
            </div>

            <div class="row wrapper  border-bottom white-bg ">
                &nbsp;
            </div>

            <!-- First Line -->

            <div class="col-xs-12 white-bg" style="height:10px;"></div>

            <!-- Form area -->
            <form method="get" class="form-horizontal" id="newticket-form">
                <!-- Hidden -->
                <input type="hidden"  id="hidden-idperson"      value="{$id_person}"/>
                <input type="hidden"  id="hidden-idjuridical"   value="{$id_company}"/>
                <input type="hidden"  id="hidden-timerClock"    value="{$timer}"/>
                <!--{if $reason_and_type == 1}
                    <input type="hidden"  id="hidden-idway"     value="NULL"/>
                    <input type="hidden"  id="hidden-idreason"  value="NULL"/>
                {/if}-->

                <!-- Left [Combos] -->
                <div class="row wrapper  white-bg ">
                    <div class="col-sm-5 b-l">
                        <!-- User -->
                        <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.User}: </label>
                            {*<div class="col-sm-10"><input type="text" class="form-control input-sm"></div>*}
                            <div class="col-sm-9">
                                <select class="form-control  form-control-sm" name="cmbUser" id="cmbUser" >
                                    <option value="0">{$smarty.config.Select} </option>
                                    {html_options values=$userids output=$uservals selected=$iduser}
                                </select>
                            </div>
                        </div>
                        <!-- Source -->
                        <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.Source}: </label>
                            {*<div class="col-sm-10"><input type="text" class="form-control input-sm"></div>*}
                            <div class="col-sm-9">
                                <select class="form-control  form-control-sm" name="-=" id="cmbSource" >
                                    <option value="0">{$smarty.config.Select} </option>
                                    {html_options values=$sourceids output=$sourcevals selected=$sourcedefault}
                                </select>
                            </div>
                        </div>
                        <!-- Request Date -->
                        <div class="form-group">
                            <label class="col-sm-3 control-label">{$smarty.config.Date}: </label>
                            <div class="col-sm-9 b-l">
                                <div class="input-group date">
                                    <input type="text" id="requestdate" name="requestdate" class="form-control input-sm" value="{$datedefault}" readonly />
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                </div>
                            </div>
                        </div>
                        <!-- Request Hour -->
                        <div class="form-group">
                            <label class="col-sm-3 control-label">{$smarty.config.Hour}: </label>
                            <div class="col-sm-9 b-l">
                                <div class="input-group clockpicker">
                                    <input type="text" id="requesttime" name="requesttime" class="form-control" value="{$timedefault}">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-time"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <!-- Area -->
                        <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.Area}: </label>
                            {*<div class="col-sm-10"><input type="text" class="form-control input-sm"></div>*}
                            <div class="col-sm-9">
                                <select class="form-control  form-control-sm" name="areaId" id="areaId" >
                                    <option value="0">{$smarty.config.Select} </option>
                                    {html_options values=$areaids output=$areavals selected=$idarea}
                                </select>
                            </div>
                        </div>
                        <!-- Type -->
                        <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.Type}:</label>
                            {*<div class="col-sm-10"><input type="text" class="form-control input-sm"></div>*}
                            <div class="col-sm-9">
                                <select class="form-control" disabled="disabled" id="typeId" >
                                    <option value="">{$smarty.config.Select} </option>

                                </select>
                            </div>
                        </div>
                        <!-- Item -->
                        <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.Item}:</label>
                            <div class="col-sm-9">
                                <select class="form-control  m-b" id="itemId" disabled="disabled">
                                    <option value="0">{$smarty.config.Select} </option>
                                    {html_options values=$itemids output=$itemvals selected=$iditem}
                                </select>
                            </div>
                        </div>
                        <!-- Service -->
                        <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.Service}:</label>
                            <div class="col-sm-9">
                                <select class="form-control  m-b" id="serviceId" disabled="disabled">
                                    <option value="0">{$smarty.config.Select} </option>
                                    {html_options values=$serviceids output=$servicevals selected=$idservice}
                                </select>
                            </div>
                        </div>
                        <!-- Reason -->
                        {if $reason_and_type != 1}
                            <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.Reason}:</label>
                                <div class="col-sm-9">
                                    <select class="form-control  m-b" id="reasonId" disabled="disabled">
                                        <option value="0">{$smarty.config.Select} </option>
                                        {html_options values=$reasonids output=$reasonvals selected=$idreason}
                                    </select>
                                </div>
                            </div>
                        {/if}
                        <!-- Attendance way -->
                        {if $field_att_way == 1}
                            <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.Att_way_min}:</label>
                                <div class="col-sm-9">
                                    <select class="form-control  m-b" id="attwayId">
                                        {html_options values=$wayids output=$wayvals selected=$idwaydefault}
                                    </select>
                                </div>
                            </div>
                        {/if}
                        <div class="form-group"><label class="col-sm-3 control-label">{$smarty.config.Attachments}:</label>
                            <div class="col-sm-9 text-center">
                                <div id="myDropzone" class="dropzone dz-default dz-message" >
                                </div>
                            </div>
                        </div>
                        <!-- Attendance time -->
                        <div class="form-group">
                            <label class="col-sm-3 control-label">{$smarty.config.Attend_time}:</label>
                            <div class="col-sm-9">
                                <div class="col-sm-3 input-group">
                                    <input type="hidden" id="atttime" name="atttime" class="form-control input-sm timer" value=""/>
                                    <span class="form-control timer"></span>
                                    <span class="input-group-addon" id="btnTimer"><i class="glyphicon glyphicon-time"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-7 b-l">
                        <!-- Equipment -->
                        {if $equipment == 1}
                            <div class="col-sm-12  form-inline b-l">
                                <label class="col-sm-3 control-label text-right">{$smarty.config.Equipment}:</label>
                                <div class="col-sm-9">
                                    <div class="form-group col-sm-4">
                                        <input type="text" placeholder="{$smarty.config.Tag_min}" id="tag" class="form-control input-sm"/>
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <input type="text" placeholder="{$smarty.config.Service_order_number}" id="os_number" class="form-control input-sm"/>
                                    </div>
                                    <div class="form-group col-sm-4">
                                        <input type="text" placeholder="{$smarty.config.Serial_number}" id="serial_number" class="form-control input-sm"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 white-bg" style="height:10px;"></div>
                        {else}
                            <input type="hidden" id="hidden-tag"  />
                            <input type="hidden" id="hidden-os_number"  />
                            <input type="hidden" id="hidden-serial_number"  />
                        {/if}


                        <!-- Subject -->
                        <div class="col-sm-12 b-l">
                            <label class="col-sm-3 control-label">{$smarty.config.Subject}:</label>
                            <div class="col-sm-9">
                                <input type="text" id="subject" name="subject" class="form-control input-sm" required placeholder="{$smarty.config.Placeholder_subject}" >
                            </div>
                        </div>

                        <div class="col-xs-12 white-bg" style="height:10px;"></div>

                        <!-- Description -->
                        <div class="col-sm-12 b-l">
                            <label class="col-sm-3 control-label">{$smarty.config.Description}:</label>
                            <div class="col-sm-9 b-l">
                                <div id="description" name="description" >{$description}</div>
                            </div>
                        </div>

                         <!-- Solution -->
                        <div class="col-sm-12 b-l">
                            <label class="col-sm-3 control-label">{$smarty.config.Solution}:</label>
                            <div class="col-sm-9 b-l">
                                <div id="solution" name="solution" >{$solution}</div>
                            </div>
                        </div>

                        {*<div class="col-xs-12 white-bg" style="height:30px;"></div>*}

                    </div>

                    <div class="col-sm-12 b-l text-center">
                        <div id="alert-newticket"></div>
                    </div>

                    <div class="row wrapper  border-bottom white-bg ">&nbsp;</div>

                    <div class="col-xs-12 white-bg" style="height:10px;"></div>

                    <div class="row wrapper  white-bg text-center">
                        <div class="col-sm-12 form-group">
                            <a href="" id="btnCancel" class="btn btn-white btn-lg" role="button">
                                <i class="fa fa fa-arrow-circle-o-left" aria-hidden="true"></i> {$smarty.config.btn_cancel}
                            </a>

                            {*<button class="btn btn-white btn-lg" type="submit">&nbsp;{$smarty.config.btn_cancel}</button>*}

                            <button type="button" class="btn btn-primary btn-lg " id="btnCreateTicket" >
                                <span class="fa fa-check"></span>  &nbsp;{$smarty.config.Register_btn}
                            </button>

                            <button type="button" class="btn btn-success btn-lg " id="btnRepassTicket" >
                                <span class="fa fa-share"></span>  &nbsp;{$smarty.config.Repass_btn}
                            </button>

                            <button type="button" class="btn btn-danger btn-lg " id="btnFinishTicket" >
                                <span class="fa fa-times"></span>  &nbsp;{$smarty.config.Finish_btn}
                            </button>
                        </div>
                    </div>
                </div>

            </form>
            <!-- End form area -->

        <div class="row border-bottom white-bg ">
        <div class="row border-bottom">

        <div class="footer">
            {include file=$footer}
        </div>
    </div>


                {include file='modals/newticket/modalAlert.tpl'}
                {include file='modals/newticket/modal-repass.tpl'}

</body>

</html>
