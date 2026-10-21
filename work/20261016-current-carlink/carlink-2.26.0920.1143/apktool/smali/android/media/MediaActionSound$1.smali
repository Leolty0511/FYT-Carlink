.class Landroid/media/MediaActionSound$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaActionSound;


# direct methods
.method public constructor <init>(Landroid/media/MediaActionSound;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaActionSound;->access$000(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v1, :cond_4

    .line 11
    .line 12
    aget-object v4, v0, v3

    .line 13
    .line 14
    iget v5, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 15
    .line 16
    if-eq v5, p2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-enter v4

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    :try_start_0
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 25
    .line 26
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 27
    .line 28
    const-string p1, "MediaActionSound"

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "OnLoadCompleteListener() error: "

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p3, " loading sound: "

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget p3, v4, Landroid/media/MediaActionSound$SoundState;->name:I

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    monitor-exit v4

    .line 61
    return-void

    .line 62
    :cond_1
    iget p2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 63
    .line 64
    const/4 p3, 0x3

    .line 65
    const/4 v0, 0x1

    .line 66
    if-eq p2, v0, :cond_3

    .line 67
    .line 68
    const/4 v0, 0x2

    .line 69
    if-eq p2, v0, :cond_2

    .line 70
    .line 71
    const-string p2, "MediaActionSound"

    .line 72
    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v0, "OnLoadCompleteListener() called in wrong state: "

    .line 79
    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v0, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, " for sound: "

    .line 89
    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v0, v4, Landroid/media/MediaActionSound$SoundState;->name:I

    .line 94
    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 107
    .line 108
    iput p3, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    iput p3, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 112
    .line 113
    :goto_1
    move v6, v2

    .line 114
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-eqz v6, :cond_4

    .line 116
    .line 117
    const/high16 v7, 0x3f800000    # 1.0f

    .line 118
    .line 119
    const/high16 v8, 0x3f800000    # 1.0f

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    const/4 v10, 0x0

    .line 123
    const/high16 v11, 0x3f800000    # 1.0f

    .line 124
    .line 125
    move-object v5, p1

    .line 126
    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    throw p1

    .line 133
    :cond_4
    :goto_2
    return-void
.end method
