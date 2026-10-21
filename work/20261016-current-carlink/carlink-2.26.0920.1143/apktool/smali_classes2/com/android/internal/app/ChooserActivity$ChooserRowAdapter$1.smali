.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v1, v1

    .line 25
    if-eq v1, v0, :cond_5

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    array-length v3, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v3, v2

    .line 39
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 40
    .line 41
    new-array v5, v0, [Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 42
    .line 43
    invoke-static {v4, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$602(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 44
    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    if-lez v0, :cond_2

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    array-length v5, v1

    .line 57
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    :cond_2
    move v2, v0

    .line 65
    :goto_1
    if-ge v2, v3, :cond_3

    .line 66
    .line 67
    aget-object v4, v1, v2

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v1, v3

    .line 76
    :goto_2
    if-ge v1, v0, :cond_4

    .line 77
    .line 78
    new-instance v2, Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    const/high16 v6, 0x3f800000    # 1.0f

    .line 84
    .line 85
    invoke-direct {v2, v4, v5, v6}, Lcom/android/internal/app/ChooserActivity$RowScale;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 89
    .line 90
    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$700(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v2, v4}, Lcom/android/internal/app/ChooserActivity$RowScale;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 99
    .line 100
    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    aput-object v2, v4, v1

    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    :goto_3
    if-ge v3, v0, :cond_5

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    aget-object v1, v1, v3

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RowScale;->startAnimation()V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public onInvalidated()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    array-length v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_0

    .line 26
    .line 27
    aget-object v3, v0, v2

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
