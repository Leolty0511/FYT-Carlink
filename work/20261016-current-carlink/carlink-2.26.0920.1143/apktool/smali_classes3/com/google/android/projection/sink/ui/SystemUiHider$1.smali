.class Lcom/google/android/projection/sink/ui/SystemUiHider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/SystemUiHider;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/SystemUiHider;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/SystemUiHider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/SystemUiHider$1;->this$0:Lcom/google/android/projection/sink/ui/SystemUiHider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/projection/sink/ui/SystemUiHider$1;->this$0:Lcom/google/android/projection/sink/ui/SystemUiHider;

    invoke-virtual {p1}, Lcom/google/android/projection/sink/ui/SystemUiHider;->delay()V

    :cond_0
    return-void
.end method
