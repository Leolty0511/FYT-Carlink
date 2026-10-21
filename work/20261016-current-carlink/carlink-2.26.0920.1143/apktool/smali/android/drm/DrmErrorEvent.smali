.class public Landroid/drm/DrmErrorEvent;
.super Landroid/drm/DrmEvent;
.source "SourceFile"


# static fields
.field public static final TYPE_ACQUIRE_DRM_INFO_FAILED:I = 0x7d8

.field public static final TYPE_NOT_SUPPORTED:I = 0x7d3

.field public static final TYPE_NO_INTERNET_CONNECTION:I = 0x7d5

.field public static final TYPE_OUT_OF_MEMORY:I = 0x7d4

.field public static final TYPE_PROCESS_DRM_INFO_FAILED:I = 0x7d6

.field public static final TYPE_REMOVE_ALL_RIGHTS_FAILED:I = 0x7d7

.field public static final TYPE_RIGHTS_NOT_INSTALLED:I = 0x7d1

.field public static final TYPE_RIGHTS_RENEWAL_NOT_ALLOWED:I = 0x7d2


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Landroid/drm/DrmErrorEvent;->checkTypeValidity(I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 4
    invoke-direct {p0, p2}, Landroid/drm/DrmErrorEvent;->checkTypeValidity(I)V

    return-void
.end method

.method private checkTypeValidity(I)V
    .locals 1

    .line 1
    const/16 v0, 0x7d1

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x7d8

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "Unsupported type: "

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
