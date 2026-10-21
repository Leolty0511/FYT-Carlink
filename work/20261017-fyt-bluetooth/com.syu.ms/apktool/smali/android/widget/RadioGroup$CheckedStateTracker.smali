.class Landroid/widget/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/RadioGroup;


# direct methods
.method private constructor <init>(Landroid/widget/RadioGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2}, Landroid/widget/RadioGroup;->access$300(Landroid/widget/RadioGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/widget/RadioGroup;->access$302(Landroid/widget/RadioGroup;Z)Z

    .line 3
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2}, Landroid/widget/RadioGroup;->access$400(Landroid/widget/RadioGroup;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2}, Landroid/widget/RadioGroup;->access$400(Landroid/widget/RadioGroup;)I

    move-result v0

    invoke-static {p2, v0, v1}, Landroid/widget/RadioGroup;->access$500(Landroid/widget/RadioGroup;IZ)V

    .line 5
    :cond_1
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2, v1}, Landroid/widget/RadioGroup;->access$302(Landroid/widget/RadioGroup;Z)Z

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 7
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2, p1}, Landroid/widget/RadioGroup;->access$600(Landroid/widget/RadioGroup;I)V

    return-void
.end method
