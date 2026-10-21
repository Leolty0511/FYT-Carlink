.class final Landroid/provider/Settings$System$InclusiveFloatRangeValidator;
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
    name = "InclusiveFloatRangeValidator"
.end annotation


# instance fields
.field private final mMax:F

.field private final mMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMin:F

    .line 5
    .line 6
    iput p2, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMax:F

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
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget v1, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMin:F

    .line 7
    .line 8
    cmpl-float v1, p1, v1

    .line 9
    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    iget v1, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMax:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    cmpg-float p1, p1, v1

    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :catch_0
    :cond_0
    return v0
.end method
