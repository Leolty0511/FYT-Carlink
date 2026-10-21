.class Lcom/google/android/projection/sink/ui/MainActivity$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity$12;->onNavigationFocusRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/ui/MainActivity$12;

.field final synthetic val$focusType:I


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity$12;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$12$1;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$12;

    iput p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$12$1;->val$focusType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$12$1;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$12;

    iget-object v0, v0, Lcom/google/android/projection/sink/ui/MainActivity$12;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    move-result-object v0

    iget v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$12$1;->val$focusType:I

    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->handleNavigationFocusRequest(I)V

    return-void
.end method
