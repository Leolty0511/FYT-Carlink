.class public Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mInputMethodId:Ljava/lang/String;

.field private final mSubtypeId:I


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getSubtypeId()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne v1, p1, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    :goto_0
    return v0
.end method

.method public getInputMethodId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InputMethodSubtypeHandle{mInputMethodId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mSubtypeId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 19
    .line 20
    const-string/jumbo v2, "}"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
