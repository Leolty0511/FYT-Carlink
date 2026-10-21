.class public final Landroid/telephony/VisualVoicemailSms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VisualVoicemailSms$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VisualVoicemailSms;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFields:Landroid/os/Bundle;

.field private final mMessageBody:Ljava/lang/String;

.field private final mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/VisualVoicemailSms$1;

    invoke-direct {v0}, Landroid/telephony/VisualVoicemailSms$1;-><init>()V

    sput-object v0, Landroid/telephony/VisualVoicemailSms;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/VisualVoicemailSms$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSms$Builder;->access$000(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/telecom/PhoneAccountHandle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSms$Builder;->access$100(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mPrefix:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSms$Builder;->access$200(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mFields:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSms$Builder;->access$300(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms;->mMessageBody:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFields()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mFields:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/VisualVoicemailSms;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/telephony/VisualVoicemailSms;->getPrefix()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/telephony/VisualVoicemailSms;->getFields()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/telephony/VisualVoicemailSms;->getMessageBody()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
