.class Landroid/service/voice/VoiceInteractionSession$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;

.field final synthetic val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;


# direct methods
.method public constructor <init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$4;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$4;->val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$4;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$4;->val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string v1, "VoiceInteractionSession"

    .line 20
    .line 21
    const-string v2, "Error calling onShown"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method
