<div class="row">

    {* -- Total Tickets -- *}
    <div class="col-md-2">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-success pull-right">{$year}</span>
                <h5>{$smarty.config.Grid_all_tickets}</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins ">{$total_all_users}</h1>

                <div class="font-bold"> <small>{$smarty.config.Tck_title}</small> </div>
            </div>
        </div>
    </div>

    {* -- User's Tickets -- *}
    <div class="col-md-2">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-success pull-right">{$year}</span>
                <h5>{$smarty.config.User_tickets}</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins">{$total_tickets}</h1>
                <div class="stat-percent font-bold text-success">{$total_tickets_percent}% <i class="fa fa-bolt"></i></div>
                <div class="font-bold"> <small>{$smarty.config.Tck_title}</small> </div>
            </div>
        </div>
    </div>

    {* -- Active Tickets -- *}
    <div class="col-md-3">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-primary pull-right">{$year}</span>
                <h5>{$smarty.config.Active_tickets}</h5>
            </div>
            <div class="ibox-content">

                <div class="row">
                    <div class="col-md-6">
                        <h1 class="no-margins">{$in_progress}</h1>
                        <div class="font-bold text-navy">{$in_progress_percent}% <i class="fa "></i> <small>{$smarty.config.Grid_being_attended}</small></div>
                    </div>
                    <div class="col-md-6">
                                            <span class="pull-right">
                                            <h1 class="no-margins">{$waiting_service}</h1>

                                            <div class="font-bold text-navy">{$waiting_service_percent}% <i class="fa "></i> <small>{$smarty.config.Waiting} </small></div>
                                            </span>
                    </div>
                </div>
            </div>
        </div>
    </div>


    {* -- Closed Tickets -- *}
    <div class="col-md-2">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-warning pull-right">{$year}</span>
                <h5>{$smarty.config.Closed_tickets}</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins">{$closed}</h1>
                <div class="stat-percent font-bold text-warning">{$closed_percent}% <i class="fa fa-bolt"></i></div>
                <div class="font-bold"> <small>{$smarty.config.Tck_title}</small> </div>
            </div>
        </div>
    </div>


    {* -- Closed Tickets Status -- *}
    <div class="col-md-3">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-warning pull-right">{$year}</span>
                <h5>{$smarty.config.Closed_status}</h5>
            </div>
            <div class="ibox-content">

                <div class="row">
                    <div class="col-md-7">
                        <h1 class="no-margins">{$waiting_aprovall}</h1>
                        <div class="font-bold text-warning">{$waiting_aprovall_percent}% <i class="fa "></i> <small>{$smarty.config.Waiting_for_approval}</small></div>
                    </div>
                    <div class="col-md-5">
                                            <span class="pull-right">
                                            <h1 class="no-margins">{$finished_requests}</h1>
                                            <div class="font-bold text-warning">{$finished_percent}% <i class="fa "></i> <small>{$smarty.config.Grid_finished}</small></div>
                                            </span>
                    </div>
                </div>


            </div>
        </div>

    </div>
</div>

<!-- -->

<div class="row">

    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>{$smarty.config.Tck_Open}</h5>
                <!--
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>

                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#">Config option 1</a>
                        </li>
                        <li><a href="#">Config option 2</a>
                        </li>
                    </ul>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
                -->
            </div>
            <div class="ibox-content">

                <table id="dash_table" class="table table-striped table-bordered table-hover dataTables-example" >
                    <thead>
                    <tr>
                        <th class="text-center">{$smarty.config.Grid_subject}</th>
                        <th class="text-center">{$smarty.config.Grid_expire_date}</th>
                        <th class="text-center">{$smarty.config.Ends_in}</th>
                        <th class="text-center">{$smarty.config.Grid_status}</th>
                        <th class="text-center">{$smarty.config.Number}</th>

                    </tr>
                    </thead>
                    <!-- body -->
                    <tbody>
                    {foreach from=$mylist key=k item=i}
                        <tr class="gradeX">
                            <td>{$i.subject}</td>
                            <td data-order="{$i.ts_expire}" class="text-center">{$i.expire_date}</td>
                            <td data-order="{$i.ts_expire}">{$i.seconds}    </td>
                            <td class="text-center">{$i.status} </td>
                            <td data-order="{$i.code_request}" class="text-center">{$i.code_request_fmt}</td>
                        </tr>
                    {/foreach}
                    </tbody>
                    <tfoot>
                    <tr>
                        <th class="text-center">{$smarty.config.Grid_subject}</th>
                        <th class="text-center">{$smarty.config.Grid_expire_date}</th>
                        <th class="text-center">{$smarty.config.Ends_in}</th>
                        <th class="text-center">{$smarty.config.Grid_status}</th>
                        <th class="text-center">{$smarty.config.Number}</th>

                    </tr>
                    </tfoot>
                </table>

            </div>
        </div>
    </div>

</div>

<!-- -->

<div class="row">
    <!-- messages -->

    <div class="col-lg-7">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>{$smarty.config.Messages}</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content ibox-heading">
                <h3><i class="fa fa-envelope-o"></i> {$smarty.config.New_messages}</h3>
                <small><i class="fa fa-tim"></i>{$num_messages}</small>
            </div>
            <div class="ibox-content">
                <div class="feed-activity-list">

                    {foreach from=$messages key=k item=i}
                        <div class="feed-element">
                            <div>
                                <small class="pull-right text-navy">{$i.elapsed}</small>
                                <strong class="pull-left text-navy">{$i.code_request}</strong> &nbsp; - &nbsp;<strong>{$i.sender}</strong>
                                <div>&nbsp;</div>
                                <div>{$i.text}</div>
                                <small class="text-muted">{$i.datetime}</small>
                            </div>
                        </div>
                    {/foreach}



                </div>
            </div>
        </div>
    </div>


    {*
    <div class="col-lg-7">
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div>
                        <span class="pull-right text-right">
                        <small>Average value of sales in the past month in: <strong>United states</strong></small>
                            <br/>
                            All sales: 162,862
                        </span>
                    <h3 class="font-bold no-margins">
                        Half-year revenue margin
                    </h3>
                    <small>Sales marketing.</small>
                </div>

                <div class="m-t-sm">

                    <div class="row">
                        <div class="col-md-8">
                            <div>
                                <canvas id="lineChart" height="114"></canvas>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <ul class="stat-list m-t-lg">
                                <li>
                                    <h2 class="no-margins">2,346</h2>
                                    <small>Total orders in period</small>
                                    <div class="progress progress-mini">
                                        <div class="progress-bar" style="width: 48%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <h2 class="no-margins ">4,422</h2>
                                    <small>Orders in last month</small>
                                    <div class="progress progress-mini">
                                        <div class="progress-bar" style="width: 60%;"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class="m-t-md">
                    <small class="pull-right">
                        <i class="fa fa-clock-o"> </i>
                        Update on 16.07.2015
                    </small>
                    <small>
                        <strong>Analysis of sales:</strong> The value has been changed over time, and last month reached a level over $50,000.
                    </small>
                </div>

            </div>
        </div>
    </div>

    *}
    <!-- User data -->
    <div class="col-lg-5">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>{$smarty.config.UserData}</h5>
            </div>

            <div class="contact-box">
                <div class="col-sm-4">
                    <div class="text-center">
                        <img alt="image" class="img-circle m-t-xs img-responsive" src="{$person_photo}">
                        <div class="m-t-xs font-bold">{$person_department}</div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <h3><strong>{$user_name}</strong></h3>
                    <p></p><strong>{$user_company}</strong><br></p>
                    <i class="fa fa-map-marker"></i> {$user_typestreet} {$user_street} {$user_number}<br>
                    {if !empty($user_complement)}
                        {$user_complement} <br>
                    {/if}
                    {$user_city}, {$user_state} {$user_zip}<br>
                    {$smarty.config.Phone}: {$user_phone} <br>
                    {$smarty.config.Mobile_phone}: {$user_cellphone}
                    </address>
                </div>
                <div class="clearfix"></div>
                {*<div class="text-right">
                    <button type="button" class="btn btn-primary" id="btnSend" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> {$smarty.config.Processing}">{$smarty.config.Send}</button>
                </div>*}
                <div class="panel-footer clearfix">
                    <div class="pull-right">
                        <button type="button" class="btn btn-primary" id="btnUpdateUserData">
                            {$smarty.config.btn_update_userdata}
                        </button>
                    </div>
                </div>




            </div>




        </div>
    </div>

</div>
