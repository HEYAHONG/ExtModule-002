/**
    \file cli_scheduler_client.h

    \brief This file defines the Mesh Scheduler Model Application Interface
    - includes Data Structures and Methods for Client.
*/

/*
    Copyright (C) 2018. Mindtree Ltd.
    All rights reserved.
*/

#ifndef _H_CLI_SCHEDULER_CLIENT_
#define _H_CLI_SCHEDULER_CLIENT_


/* --------------------------------------------- Header File Inclusion */
#include "MS_scheduler_api.h"
#include "cli_main.h"


/* --------------------------------------------- Global Definitions */


/* --------------------------------------------- Data Types/ Structures */


/* --------------------------------------------- Function */
/* scheduler client CLI entry point */
CLI_CMD_HANDLER_DECL(cli_modelc_scheduler);

/* scheduler client CLI entry point */
CLI_CMD_HANDLER_DECL(cli_modelc_scheduler_setup);

/* Send Scheduler Action Get */
CLI_CMD_HANDLER_DECL(cli_modelc_scheduler_action_get);

/* Send Scheduler Action Set */
CLI_CMD_HANDLER_DECL(cli_modelc_scheduler_action_set);

/* Send Scheduler Action Set Unacknowledged */
CLI_CMD_HANDLER_DECL(cli_modelc_scheduler_action_set_unacknowledged);

/* Send Scheduler Get */
CLI_CMD_HANDLER_DECL(cli_modelc_scheduler_get);

/* Get Model Handle */
CLI_CMD_HANDLER_DECL(cli_modelc_scheduler_get_model_handle);

/* Set Publish Address */
CLI_CMD_HANDLER_DECL(cli_modelc_scheduler_set_publish_address);

/**
    \brief Client Application Asynchronous Notification Callback.

    \par Description
    Scheduler client calls the registered callback to indicate events occurred to the application.

    \param [in] handle        Model Handle.
    \param [in] opcode        Opcode.
    \param [in] data_param    Data associated with the event if any or NULL.
    \param [in] data_len      Size of the event data. 0 if event data is NULL.
*/
API_RESULT cli_scheduler_client_cb
(
    /* IN */ MS_ACCESS_MODEL_HANDLE* handle,
    /* IN */ UINT32                   opcode,
    /* IN */ UCHAR*                   data_param,
    /* IN */ UINT16                   data_len
);

#endif /*_H_CLI_SCHEDULER_CLIENT_ */
