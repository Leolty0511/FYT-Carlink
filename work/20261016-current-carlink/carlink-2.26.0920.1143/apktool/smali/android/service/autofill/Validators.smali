.class public final Landroid/service/autofill/Validators;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string v1, "contains static methods only"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static varargs and([Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;
    .locals 1

    new-instance v0, Landroid/service/autofill/RequiredValidators;

    invoke-static {p0}, Landroid/service/autofill/Validators;->getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/service/autofill/RequiredValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method

.method private static getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;
    .locals 5

    .line 1
    const-string/jumbo v0, "validators"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    array-length v0, p0

    .line 8
    new-array v0, v0, [Landroid/service/autofill/InternalValidator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    aget-object v2, p0, v1

    .line 15
    .line 16
    instance-of v2, v2, Landroid/service/autofill/InternalValidator;

    .line 17
    .line 18
    const-string v3, "element "

    .line 19
    .line 20
    const-string v4, " not provided by Android System: "

    .line 21
    .line 22
    invoke-static {v3, v1, v4}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    aget-object v4, p0, v1

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    aget-object v2, p0, v1

    .line 39
    .line 40
    check-cast v2, Landroid/service/autofill/InternalValidator;

    .line 41
    .line 42
    aput-object v2, v0, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method public static varargs or([Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;
    .locals 1

    new-instance v0, Landroid/service/autofill/OptionalValidators;

    invoke-static {p0}, Landroid/service/autofill/Validators;->getInternalValidators([Landroid/service/autofill/Validator;)[Landroid/service/autofill/InternalValidator;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/service/autofill/OptionalValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method
