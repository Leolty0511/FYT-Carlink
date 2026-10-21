.class public Landroid/widget/Editor$EditOperation;
.super Landroid/content/UndoOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation<",
        "Landroid/widget/Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/widget/Editor$EditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_DELETE:I = 0x1

.field private static final TYPE_INSERT:I = 0x0

.field private static final TYPE_REPLACE:I = 0x2


# instance fields
.field private mFrozen:Z

.field private mIsComposition:Z

.field private mNewCursorPos:I

.field private mNewText:Ljava/lang/String;

.field private mOldCursorPos:I

.field private mOldText:Ljava/lang/String;

.field private mStart:I

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    sput-object v0, Landroid/widget/Editor$EditOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/widget/Editor;->access$7300(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 2
    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    .line 7
    iput p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 8
    iput p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 9
    :goto_0
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 10
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 11
    iget-object p1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 12
    iput-boolean p5, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    return-void
.end method

.method public static synthetic access$7002(Landroid/widget/Editor$EditOperation;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    return p1
.end method

.method public static synthetic access$7100(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$7200(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$7400(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result p0

    return p0
.end method

.method private getNewTextEnd()I
    .locals 2

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getOldTextEnd()I
    .locals 2

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "replace"

    return-object v0

    :cond_1
    const-string v0, "delete"

    return-object v0

    :cond_2
    const-string v0, "insert"

    return-object v0
.end method

.method private mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 18
    .line 19
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 41
    .line 42
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 43
    .line 44
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 45
    .line 46
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 47
    .line 48
    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 49
    .line 50
    return v2
.end method

.method private mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 12
    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 36
    .line 37
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 38
    .line 39
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 40
    .line 41
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 44
    .line 45
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 46
    .line 47
    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    iget-boolean v3, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    if-ne v0, v3, :cond_2

    .line 56
    .line 57
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 58
    .line 59
    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 60
    .line 61
    if-gt v0, v3, :cond_2

    .line 62
    .line 63
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-lt v0, v3, :cond_2

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 79
    .line 80
    iget v4, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 81
    .line 82
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 83
    .line 84
    sub-int/2addr v4, v5

    .line 85
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 104
    .line 105
    sub-int/2addr v3, v4

    .line 106
    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 124
    .line 125
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 126
    .line 127
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 128
    .line 129
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 130
    .line 131
    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 132
    .line 133
    return v1

    .line 134
    :cond_2
    return v2
.end method

.method private mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v2, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 34
    .line 35
    iget p1, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 36
    .line 37
    iput p1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 38
    .line 39
    return v1

    .line 40
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 51
    .line 52
    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 53
    .line 54
    if-gt v0, v3, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-lt v0, v3, :cond_3

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 72
    .line 73
    iget v4, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 74
    .line 75
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 76
    .line 77
    sub-int/2addr v4, v5

    .line 78
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 92
    .line 93
    sub-int/2addr v3, v4

    .line 94
    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iput v1, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 120
    .line 121
    :cond_2
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 122
    .line 123
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 124
    .line 125
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 126
    .line 127
    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 128
    .line 129
    return v1

    .line 130
    :cond_3
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    .line 131
    .line 132
    const/4 v3, 0x2

    .line 133
    if-ne v0, v3, :cond_4

    .line 134
    .line 135
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 136
    .line 137
    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 138
    .line 139
    if-ne v0, v3, :cond_4

    .line 140
    .line 141
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v3, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    iget-object v0, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 154
    .line 155
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 156
    .line 157
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 158
    .line 159
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 160
    .line 161
    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 162
    .line 163
    return v1

    .line 164
    :cond_4
    return v2
.end method

.method private mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method private static modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->access$7500(Ljava/lang/CharSequence;II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int v1, p2, p1

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    if-gt p4, v0, :cond_1

    .line 15
    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    :cond_1
    if-ltz p5, :cond_2

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-gt p5, p1, :cond_2

    .line 37
    .line 38
    invoke-static {p0, p5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    return-void
.end method

.method public forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .locals 14

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/UndoOperation;->getOwnerData()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/Editor;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/text/Editable;

    .line 23
    .line 24
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 34
    .line 35
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 40
    .line 41
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 42
    .line 43
    iget v6, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 44
    .line 45
    move-object v1, v7

    .line 46
    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget v9, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 59
    .line 60
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    iget-object v11, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 65
    .line 66
    iget v12, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 67
    .line 68
    iget v13, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 69
    .line 70
    move-object v8, v1

    .line 71
    invoke-static/range {v8 .. v13}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 91
    .line 92
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 93
    .line 94
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 95
    .line 96
    iget-boolean p1, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 97
    .line 98
    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 99
    .line 100
    return-void
.end method

.method public redo()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/UndoOperation;->getOwnerData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/Editor;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Landroid/text/Editable;

    .line 17
    .line 18
    iget v2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 19
    .line 20
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 25
    .line 26
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 27
    .line 28
    iget v6, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 29
    .line 30
    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[mType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getTypeString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", mOldText="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", mNewText="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", mStart="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", mOldCursorPos="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", mNewCursorPos="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", mFrozen="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", mIsComposition="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 81
    .line 82
    const-string v2, "]"

    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method

.method public undo()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/UndoOperation;->getOwnerData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/Editor;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Landroid/text/Editable;

    .line 17
    .line 18
    iget v2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 19
    .line 20
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 25
    .line 26
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 27
    .line 28
    iget v6, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 29
    .line 30
    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
