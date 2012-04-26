.class public Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;
    }
.end annotation


# static fields
.field protected static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT"

.field protected static final ACTION_MESSAGE_SENT_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_SENT_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

.field protected static final ACTION_MMSAPP_MESSAGE_SENT:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field protected static final ACTION_MMSAPP_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

.field public static final D:Z = true

.field protected static final MMSAPP_MSG_STATUS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver"

.field protected static final MMSAPP_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field protected static final MMSAPP_SMS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.mms.transaction.SmsReceiver"

.field private static final ORDER_BY_SMS_RECEIVED:Ljava/lang/String; = "_id DESC "

.field private static final PROJECTION_SMS_RECEIVED:[Ljava/lang/String; = null

.field private static final SELECTION_SMS_RECEIVED:Ljava/lang/String; = "type = 1 AND protocol = ? AND address = ? AND body = ?"

.field public static final TAG:Ljava/lang/String; = "SmsEventReceiver"


# instance fields
.field final intentExtraName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "MapURI"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->intentExtraName:Ljava/lang/String;

    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    iget-object v0, p1, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    return-void
.end method

.method private processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .locals 12
    .parameter "ctx"
    .parameter "msg"
    .parameter "retryCount"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    const-string v11, "SmsEventReceiver"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, c:Landroid/database/Cursor;
    const/4 v9, -0x1

    .local v9, messageId:I
    const/4 v7, 0x0

    .local v7, hasError:Z
    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, ""

    aput-object v0, v4, v2

    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p2

    if-ge v8, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v8

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying for SMS inbox message: protocol identifier= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", originating address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disaplay message body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    const-string v3, "type = 1 AND protocol = ? AND address = ? AND body = ?"

    const-string v5, "_id DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    if-eqz v7, :cond_3

    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v0, "SmsEventReceiver"

    const-string v1, "Querying for SMS inbox message: Either cursor is null or no rows returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v0

    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "SmsEventReceiver"

    const-string v0, "Error querying database"

    invoke-static {v11, v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x1

    goto :goto_1

    .end local v10           #t:Ljava/lang/Throwable;
    :cond_3
    const-string v0, "SmsEventReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq v9, v0, :cond_4

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v1, "SMS"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/inbox"

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x5

    if-ge p3, v0, :cond_5

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    const-string v0, "SmsEventReceiver"

    const-string v0, "Unable to process SMS receive. Retry count exceeded."

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "ctx"
    .parameter "intent"

    .prologue
    const-string v7, "SmsEventReceiver"

    const-string v5, "SmsEventReceiver"

    const-string v5, "processMessageReceivedAction()"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SmsEventReceiver"

    const-string v5, "MAP notification not enabled...Skipping event"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    .local v3, pdus:[Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v5, "pdus"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    if-eqz v3, :cond_1

    array-length v5, v3

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    :cond_1
    const-string v5, "SmsEventReceiver"

    const-string v5, "Unable to get pdus. Not processing SMS received event"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    array-length v5, v3

    new-array v4, v5, [Landroid/telephony/SmsMessage;

    .local v4, smsMessages:[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_3

    aget-object v5, v3, v2

    check-cast v5, [B

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    goto :goto_0
.end method

.method private processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "SMS"

    const-string v5, "SmsEventReceiver"

    const-string v3, "SmsEventReceiver"

    const-string v3, "processMessageSentAction()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->sendMmsAppMessageSentEvent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SmsEventReceiver"

    const-string v3, "MAP notification not enabled...Skipping event"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, messageId:Ljava/lang/String;
    const-string v3, "MapURI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, messageUri:Landroid/net/Uri;
    if-nez v1, :cond_2

    const-string v3, "SmsEventReceiver"

    const-string v3, "Unable to get Message URI for message"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->getResultCode()I

    move-result v2

    .local v2, resultCode:I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_3

    const-string v3, "SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message sent successfully. MessageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS"

    const-string v4, "/outbox"

    invoke-virtual {v3, v6, v0, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". ResultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ErrorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "errorCode"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS"

    const-string v4, "/failed"

    invoke-virtual {v3, v6, v0, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "SmsEventReceiver"

    const-string v3, "processMessageStatusReceivedAction()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->sendMmsAppMessageStatusReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SmsEventReceiver"

    const-string v3, "MAP notification not enabled...Skipping event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1
    :goto_0
    return-void

    .restart local p1
    :cond_1
    const-string v2, "MapURI"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .local v3, messageUri:Landroid/net/Uri;
    if-nez v3, :cond_2

    const-string v2, "SmsEventReceiver"

    const-string v3, "Unable to process message status. Invalid messageUri"

    .end local v3           #messageUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v3       #messageUri:Landroid/net/Uri;
    :cond_2
    const-string v2, "SmsEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got message URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, -0x1

    .local v10, folderType:I
    const/4 v8, 0x0

    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_4
    invoke-static {v10}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v9

    .local v9, folderPath:Ljava/lang/String;
    if-nez v9, :cond_5

    const-string v2, "SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #messageUri:Landroid/net/Uri;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid folder path for folder type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v9           #folderPath:Ljava/lang/String;
    .restart local v3       #messageUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    move-object v15, v2

    .local v15, t:Ljava/lang/Throwable;
    const-string v2, "SmsEventReceiver"

    const-string v4, "Error querying database"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v9       #folderPath:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .local v12, messageId:Ljava/lang/String;
    const-string v2, "pdu"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .local v13, pdu:[B
    if-eqz v13, :cond_7

    invoke-static {v13}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v11

    .local v11, message:Landroid/telephony/SmsMessage;
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v14

    .local v14, status:I
    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v2, v0

    const-string v3, "SMS"

    .end local v3           #messageUri:Landroid/net/Uri;
    invoke-virtual {v2, v3, v12, v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3       #messageUri:Landroid/net/Uri;
    :cond_6
    const-string v2, "SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #messageUri:Landroid/net/Uri;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deliverying message. ErrorCode= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v2, v0

    const-string v3, "SMS"

    invoke-virtual {v2, v3, v12, v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v11           #message:Landroid/telephony/SmsMessage;
    .end local v14           #status:I
    .restart local v3       #messageUri:Landroid/net/Uri;
    :cond_7
    const-string v2, "SmsEventReceiver"

    const-string v3, "Got delivery report with no pdus"

    .end local v3           #messageUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendMmsAppMessageSentEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "errorCode"

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.SmsReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "errorCode"

    const-string v1, "errorCode"

    const/4 v1, 0x0

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MapURI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendMmsAppMessageStatusReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.MessageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MapURI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    .end local p1
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .restart local p1
    :cond_0
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "SmsEventReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to process action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
