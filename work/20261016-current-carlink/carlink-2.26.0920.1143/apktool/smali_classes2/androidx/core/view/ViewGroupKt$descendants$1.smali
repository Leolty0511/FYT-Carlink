.class final Landroidx/core/view/ViewGroupKt$descendants$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lz/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Le0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lz/p;"
    }
.end annotation

.annotation runtime Lv/b;
    c = "androidx.core.view.ViewGroupKt$descendants$1"
    f = "ViewGroup.kt"
    l = {
        0x77,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_descendants:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lu/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lu/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILu/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu/c;)Lu/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lu/c;",
            ")",
            "Lu/c;"
        }
    .end annotation

    new-instance v0, Landroidx/core/view/ViewGroupKt$descendants$1;

    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lu/c;)V

    iput-object p1, v0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Le0/i;Lu/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/i;",
            "Lu/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->create(Ljava/lang/Object;Lu/c;)Lu/c;

    move-result-object p1

    check-cast p1, Landroidx/core/view/ViewGroupKt$descendants$1;

    sget-object p2, Ls/c;->a:Ls/c;

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Le0/i;

    check-cast p2, Lu/c;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invoke(Le0/i;Lu/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 14
    .line 15
    iget v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Le0/i;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    move-object p1, p0

    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 40
    .line 41
    iget v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 42
    .line 43
    iget-object v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Landroid/view/View;

    .line 46
    .line 47
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget-object v7, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v7, Le0/i;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object p1, p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Le0/i;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v6, p0

    .line 75
    :goto_0
    if-ge v5, v4, :cond_6

    .line 76
    .line 77
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const-string v8, "getChildAt(index)"

    .line 82
    .line 83
    invoke-static {v7, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object v1, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object v7, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 91
    .line 92
    iput v5, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 93
    .line 94
    iput v4, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 95
    .line 96
    iput v3, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 97
    .line 98
    move-object v8, p1

    .line 99
    check-cast v8, Le0/h;

    .line 100
    .line 101
    iput-object v7, v8, Le0/h;->c:Ljava/lang/Object;

    .line 102
    .line 103
    const/4 v9, 0x3

    .line 104
    iput v9, v8, Le0/h;->b:I

    .line 105
    .line 106
    iput-object v6, v8, Le0/h;->e:Lu/c;

    .line 107
    .line 108
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 109
    .line 110
    if-ne v8, v0, :cond_3

    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_3
    move-object v10, v7

    .line 114
    move-object v7, p1

    .line 115
    move-object p1, v6

    .line 116
    move-object v6, v1

    .line 117
    move v1, v4

    .line 118
    move v4, v5

    .line 119
    move-object v5, v10

    .line 120
    :goto_1
    instance-of v8, v5, Landroid/view/ViewGroup;

    .line 121
    .line 122
    if-eqz v8, :cond_5

    .line 123
    .line 124
    check-cast v5, Landroid/view/ViewGroup;

    .line 125
    .line 126
    invoke-static {v5}, Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Le0/g;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    iput-object v7, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v6, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    iput-object v8, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 136
    .line 137
    iput v4, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 138
    .line 139
    iput v1, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 140
    .line 141
    iput v2, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 142
    .line 143
    invoke-virtual {v7, v5, p1}, Le0/i;->a(Le0/g;Lu/c;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-ne v5, v0, :cond_4

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_4
    move-object v5, v6

    .line 151
    move-object v6, v7

    .line 152
    :goto_2
    move-object v10, v6

    .line 153
    move-object v6, p1

    .line 154
    move-object p1, v10

    .line 155
    move-object v11, v5

    .line 156
    move v5, v1

    .line 157
    move-object v1, v11

    .line 158
    goto :goto_3

    .line 159
    :cond_5
    move v5, v1

    .line 160
    move-object v1, v6

    .line 161
    move-object v6, p1

    .line 162
    move-object p1, v7

    .line 163
    :goto_3
    add-int/2addr v4, v3

    .line 164
    move v10, v5

    .line 165
    move v5, v4

    .line 166
    move v4, v10

    .line 167
    goto :goto_0

    .line 168
    :cond_6
    sget-object p1, Ls/c;->a:Ls/c;

    .line 169
    .line 170
    return-object p1
.end method
