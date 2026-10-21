.class final Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/Settings$System$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMin:I

    .line 5
    .line 6
    iput p2, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMax:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget v1, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMin:I

    .line 7
    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;->mMax:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    if-gt p1, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :catch_0
    :cond_0
    return v0
.end method
