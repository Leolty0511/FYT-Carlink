.class Landroid/app/Presentation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Presentation;


# direct methods
.method public constructor <init>(Landroid/app/Presentation;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/Presentation;->access$000(Landroid/app/Presentation;)Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/app/Presentation;->access$200(Landroid/app/Presentation;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/Presentation;->access$000(Landroid/app/Presentation;)Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/app/Presentation$2;->this$0:Landroid/app/Presentation;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/app/Presentation;->access$100(Landroid/app/Presentation;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
