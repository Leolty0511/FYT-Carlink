.class public final Landroid/view/inputmethod/CompletionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/CompletionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mId:J

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mPosition:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/CompletionInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/CompletionInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/CharSequence;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    .line 4
    iput p3, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    .line 5
    iput-object p4, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(JILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    .line 9
    iput p3, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    .line 10
    iput-object p4, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    .line 11
    iput-object p5, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    .line 15
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    .line 16
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/inputmethod/CompletionInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/inputmethod/CompletionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompletionInfo{#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/view/inputmethod/CompletionInfo;->mId:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/view/inputmethod/CompletionInfo;->mPosition:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mText:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/view/inputmethod/CompletionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
