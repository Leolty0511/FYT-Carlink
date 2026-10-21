.class Lcom/google/android/material/timepicker/MaterialTimePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/MaterialTimePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$402(Lcom/google/android/material/timepicker/MaterialTimePicker;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$500(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$600(Lcom/google/android/material/timepicker/MaterialTimePicker;Lcom/google/android/material/button/MaterialButton;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$700(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
