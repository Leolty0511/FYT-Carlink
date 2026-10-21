.class public final synthetic Lcom/android/internal/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/internal/widget/d;->b:I

    iput-object p1, p0, Lcom/android/internal/widget/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/d;->b:I

    iget-object v1, p0, Lcom/android/internal/widget/d;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-static {v1}, Lcom/android/internal/widget/SwipeDismissLayout$1;->a(Lcom/android/internal/widget/SwipeDismissLayout$1;)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;->a(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;)V

    return-void

    :goto_0
    check-cast v1, Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-interface {v1}, Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;->onEarlyMatched()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
