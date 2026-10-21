.class public Landroid/text/style/AccessibilityClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/AccessibilityClickableSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectionId:I

.field private final mOriginalClickableSpanId:I

.field private mSourceNodeId:J

.field private mWindowId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/style/AccessibilityClickableSpan$1;

    invoke-direct {v0}, Landroid/text/style/AccessibilityClickableSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/AccessibilityClickableSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 3
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 4
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 5
    iput p1, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 8
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 9
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    return-void
.end method


# virtual methods
.method public copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getConnectionId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 18
    .line 19
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    move-object v0, p1

    .line 8
    check-cast v0, Landroid/text/Spanned;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const-class v2, Landroid/text/style/ClickableSpan;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {v0, v3, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 22
    .line 23
    :goto_0
    array-length v0, p1

    .line 24
    if-ge v3, v0, :cond_2

    .line 25
    .line 26
    aget-object v0, p1, v3

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/text/style/ClickableSpan;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    .line 33
    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    aget-object p1, p1, v3

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object v1
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/AccessibilityClickableSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    .line 7
    .line 8
    invoke-virtual {v6, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    iget-wide v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 17
    .line 18
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    .line 19
    .line 20
    cmp-long p1, v1, v3

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget p1, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 33
    .line 34
    iget v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 35
    .line 36
    iget-wide v3, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 37
    .line 38
    const v5, 0x1020169

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    const-string v0, "ClickableSpan for accessibility service not properly initialized"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
