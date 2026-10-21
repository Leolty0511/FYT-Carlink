.class public interface abstract Lcom/android/internal/telephony/IMms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMms$Stub;
    }
.end annotation


# virtual methods
.method public abstract addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract archiveStoredConversation(Ljava/lang/String;JZ)Z
.end method

.method public abstract deleteStoredConversation(Ljava/lang/String;J)Z
.end method

.method public abstract deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
.end method

.method public abstract downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
.end method

.method public abstract getAutoPersisting()Z
.end method

.method public abstract getCarrierConfigValues(I)Landroid/os/Bundle;
.end method

.method public abstract importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
.end method

.method public abstract importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
.end method

.method public abstract sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
.end method

.method public abstract setAutoPersisting(Ljava/lang/String;Z)V
.end method

.method public abstract updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
.end method
