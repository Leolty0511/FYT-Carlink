.class Lcom/android/internal/widget/ViewPager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->access$000(Lcom/android/internal/widget/ViewPager;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$3;->this$0:Lcom/android/internal/widget/ViewPager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
