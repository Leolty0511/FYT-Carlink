.class public final synthetic Lcom/android/internal/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;I)V
    .locals 0

    iput p2, p0, Lcom/android/internal/widget/e;->a:I

    iput-object p1, p0, Lcom/android/internal/widget/e;->b:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEarlyMatched()V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/e;->a:I

    iget-object v1, p0, Lcom/android/internal/widget/e;->b:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onEarlyMatched()V

    return-void

    :goto_0
    invoke-interface {v1}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onEarlyMatched()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
