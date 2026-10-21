.class public final Landroid/service/autofill/SaveCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCallback:Landroid/service/autofill/ISaveCallback;

.field private mCalled:Z


# direct methods
.method public constructor <init>(Landroid/service/autofill/ISaveCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    .line 5
    .line 6
    return-void
.end method

.method private assertNotCalled()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Already called"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/autofill/SaveCallback;->assertNotCalled()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/service/autofill/SaveCallback;->mCalled:Z

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/SaveCallback;->mCallback:Landroid/service/autofill/ISaveCallback;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/service/autofill/ISaveCallback;->onSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
