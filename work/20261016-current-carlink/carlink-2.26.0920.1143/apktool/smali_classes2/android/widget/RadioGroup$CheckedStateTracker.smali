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
.field final synthetic this$0:Landroid/widget/RadioGroup;


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

    .line 2
    .line 3
    invoke-static {p2}, Landroid/widget/RadioGroup;->access$300(Landroid/widget/RadioGroup;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p2, v0}, Landroid/widget/RadioGroup;->access$302(Landroid/widget/RadioGroup;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/widget/RadioGroup;->access$400(Landroid/widget/RadioGroup;)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/4 v0, -0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eq p2, v0, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    .line 27
    .line 28
    invoke-static {p2}, Landroid/widget/RadioGroup;->access$400(Landroid/widget/RadioGroup;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {p2, v0, v1}, Landroid/widget/RadioGroup;->access$500(Landroid/widget/RadioGroup;IZ)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    .line 36
    .line 37
    invoke-static {p2, v1}, Landroid/widget/RadioGroup;->access$302(Landroid/widget/RadioGroup;Z)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    .line 45
    .line 46
    invoke-static {p2, p1}, Landroid/widget/RadioGroup;->access$600(Landroid/widget/RadioGroup;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
