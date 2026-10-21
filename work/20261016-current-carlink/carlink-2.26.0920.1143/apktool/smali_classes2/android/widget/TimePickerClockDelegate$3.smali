.class Landroid/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextInputTimePickerView$OnValueTypedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(II)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/widget/TimePickerClockDelegate;->access$800(Landroid/widget/TimePickerClockDelegate;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 17
    .line 18
    invoke-static {p1, p2, v0, v1}, Landroid/widget/TimePickerClockDelegate;->access$700(Landroid/widget/TimePickerClockDelegate;IIZ)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p1, p2, v0, v2, v1}, Landroid/widget/TimePickerClockDelegate;->access$300(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
