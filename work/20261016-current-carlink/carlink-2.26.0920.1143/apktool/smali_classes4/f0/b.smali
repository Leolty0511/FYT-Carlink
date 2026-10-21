.class public final Lf0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lc0/d;

.field public f:I

.field public final synthetic g:Lf0/c;


# direct methods
.method public constructor <init>(Lf0/c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lf0/b;->g:Lf0/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lf0/b;->b:I

    .line 8
    .line 9
    iget v0, p1, Lf0/c;->b:I

    .line 10
    .line 11
    iget-object p1, p1, Lf0/c;->a:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ltz p1, :cond_2

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-le v0, p1, :cond_1

    .line 24
    .line 25
    move v0, p1

    .line 26
    :cond_1
    :goto_0
    iput v0, p0, Lf0/b;->c:I

    .line 27
    .line 28
    iput v0, p0, Lf0/b;->d:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 34
    .line 35
    const-string v2, " is less than minimum 0."

    .line 36
    .line 37
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget v0, p0, Lf0/b;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lf0/b;->b:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lf0/b;->e:Lc0/d;

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lf0/b;->g:Lf0/c;

    .line 14
    .line 15
    iget v3, v2, Lf0/c;->c:I

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    iget-object v5, v2, Lf0/c;->a:Ljava/lang/CharSequence;

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    if-lez v3, :cond_1

    .line 22
    .line 23
    iget v7, p0, Lf0/b;->f:I

    .line 24
    .line 25
    add-int/2addr v7, v6

    .line 26
    iput v7, p0, Lf0/b;->f:I

    .line 27
    .line 28
    if-ge v7, v3, :cond_2

    .line 29
    .line 30
    :cond_1
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-le v0, v3, :cond_3

    .line 35
    .line 36
    :cond_2
    new-instance v0, Lc0/d;

    .line 37
    .line 38
    iget v1, p0, Lf0/b;->c:I

    .line 39
    .line 40
    invoke-static {v5}, Lf0/h;->L(Ljava/lang/CharSequence;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-direct {v0, v1, v2}, Lc0/d;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lf0/b;->e:Lc0/d;

    .line 48
    .line 49
    iput v4, p0, Lf0/b;->d:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget v0, p0, Lf0/b;->d:I

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v2, v2, Lf0/c;->d:Lz/p;

    .line 59
    .line 60
    invoke-interface {v2, v5, v0}, Lz/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lkotlin/Pair;

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    new-instance v0, Lc0/d;

    .line 69
    .line 70
    iget v1, p0, Lf0/b;->c:I

    .line 71
    .line 72
    invoke-static {v5}, Lf0/h;->L(Ljava/lang/CharSequence;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {v0, v1, v2}, Lc0/d;-><init>(II)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lf0/b;->e:Lc0/d;

    .line 80
    .line 81
    iput v4, p0, Lf0/b;->d:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iget v3, p0, Lf0/b;->c:I

    .line 105
    .line 106
    const/high16 v4, -0x80000000

    .line 107
    .line 108
    if-gt v2, v4, :cond_5

    .line 109
    .line 110
    sget-object v3, Lc0/d;->e:Lc0/d;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    new-instance v4, Lc0/d;

    .line 114
    .line 115
    add-int/lit8 v5, v2, -0x1

    .line 116
    .line 117
    invoke-direct {v4, v3, v5}, Lc0/d;-><init>(II)V

    .line 118
    .line 119
    .line 120
    move-object v3, v4

    .line 121
    :goto_0
    iput-object v3, p0, Lf0/b;->e:Lc0/d;

    .line 122
    .line 123
    add-int/2addr v2, v0

    .line 124
    iput v2, p0, Lf0/b;->c:I

    .line 125
    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    move v1, v6

    .line 129
    :cond_6
    add-int/2addr v2, v1

    .line 130
    iput v2, p0, Lf0/b;->d:I

    .line 131
    .line 132
    :goto_1
    iput v6, p0, Lf0/b;->b:I

    .line 133
    .line 134
    :goto_2
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lf0/b;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lf0/b;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lf0/b;->b:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lf0/b;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lf0/b;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lf0/b;->b:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lf0/b;->e:Lc0/d;

    .line 14
    .line 15
    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lf0/b;->e:Lc0/d;

    .line 22
    .line 23
    iput v1, p0, Lf0/b;->b:I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
